#!/usr/bin/env python
import rospy
import math
from tf import TransformListener, transformations
from geometry_msgs.msg import PoseStamped, PointStamped, PoseWithCovarianceStamped
from nav_msgs.msg import OccupancyGrid
from move_base_msgs.msg import MoveBaseGoal
from api_msgs.srv import GridPose, GridPoseResponse, SetGoal, SetGoalResponse, SetInitialPose, SetInitialPoseResponse


class RobotPoseSrv():
    def __init__(self, map_frame, robot_frame):
        self.robot_frame = robot_frame
        self.map_frame = map_frame
        self.pose = PoseStamped()
        self.mapinfo = OccupancyGrid()
        rospy.Subscriber("pose", PoseStamped, self.pose_callback)
        rospy.Subscriber("map", OccupancyGrid, self.map_callback)
        # pose_pub = rospy.Publisher('grid_pose',GridPose,queue_size=10)
        rospy.Service('api/grid_pose', GridPose, self.handle_pose)
        rospy.Service('api/set_goal', SetGoal, self.handle_goal)
        rospy.Service('api/set_initial_pose', SetInitialPose, self.handle_setinitialpose)
        self.tf_listener = TransformListener()

        # rate=rospy.Rate(5)
        # while not rospy.is_shutdown():
        #     if self.mapinfo.info.resolution != 0.0:
        #         pose_grid.grid_x = (int)((p.pose.position.x-m.info.origin.position.x)/m.info.resolution)
        #         pose_grid.grid_y = (int)((p.pose.position.y-m.info.origin.position.y)/m.info.resolution)
        #         rospy.loginfo('grid pose(%d,%d)',pose_grid.grid_x,pose_grid.grid_y)
        #         pose_pub.publish(pose_grid)
        #     rate.sleep()

    def pose_callback(self, msg):
        self.pose.pose = msg.pose

    def map_callback(self, msg):
        self.mapinfo.info = msg.info

    def handle_pose(self, req):
        grid_pose = GridPoseResponse()
        center = PointStamped()
        head = PointStamped()
        center.header.frame_id = self.robot_frame
        head.header.frame_id = self.robot_frame
        center.point.x = 0.0
        head.point.x = 0.4  # afront of robot
        self.tf_listener.waitForTransform(self.map_frame, self.robot_frame,
                                          rospy.Time.now(), rospy.Duration(1.0))
        try:
            grid_center = self.tf_listener.transformPoint(self.map_frame, center)
            grid_head = self.tf_listener.transformPoint(self.map_frame, head)
            grid_pose.pose.x = int((grid_center.point.x
                                   - self.mapinfo.info.origin.position.x)
                                   / self.mapinfo.info.resolution)
            grid_pose.pose.y = int((grid_center.point.y
                                   - self.mapinfo.info.origin.position.y)
                                   / self.mapinfo.info.resolution)
            grid_pose.head.x = int((grid_head.point.x
                                   - self.mapinfo.info.origin.position.x)
                                   / self.mapinfo.info.resolution)
            grid_pose.head.y = int((grid_head.point.y
                                   - self.mapinfo.info.origin.position.y)
                                   / self.mapinfo.info.resolution)
            grid_pose.msg = 'success'
        except Exception:
            grid_pose.msg = 'fail to request robot pose'
        #rospy.loginfo(grid_pose)
        return grid_pose

    def handle_goal(self, req):
        rospy.loginfo('recieve a custom goal: x %d, y %d', req.grid_x, req.grid_y)
        g = MoveBaseGoal()
        res = SetGoalResponse()
        try:
            goal_pub = rospy.Publisher('goal', MoveBaseGoal, queue_size=10)
            g.target_pose.pose.position.x = (
                req.grid_x * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.x)
            g.target_pose.pose.position.y = (
                req.grid_y * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.y)
            goal_pub.publish(g)
            res.msg = 'success'
        except Exception:
            res.msg = 'set goal failed'
        return res

    def handle_setinitialpose(self, req):
        rospy.loginfo('initalize...')
        res = SetInitialPoseResponse()
        pose = PoseWithCovarianceStamped()
        pose.header.frame_id = self.map_frame
        pose.header.stamp = rospy.Time.now()
        pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0,
                                0.0, 0.25, 0.0, 0.0, 0.0, 0.0,
                                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                                0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                                0.0, 0.0, 0.0, 0.0, 0.0, 0.06853891945200942]
        pose.pose.pose.position.x = req.pose.x * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.x
        pose.pose.pose.position.y = req.pose.y * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.y
        head_x = req.head.x * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.x
        head_y = req.head.y * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.y
        try:
            yaw = math.atan2(head_y - pose.pose.pose.position.y, head_x - pose.pose.pose.position.x)
            quat = transformations.quaternion_from_euler(0,0,yaw)
            pose.pose.pose.orientation.x = quat[0]
            pose.pose.pose.orientation.y = quat[1]
            pose.pose.pose.orientation.z = quat[2]
            pose.pose.pose.orientation.w = quat[3]
            res.msg = 'success'
        except Exception:
            res.msg = 'error with calculate'

        initial_pose_pub = rospy.Publisher('initialpose',PoseWithCovarianceStamped, queue_size = 1)
        initial_pose_pub.publish(pose)
        return res

if __name__ == '__main__':
    rospy.init_node('grid_pose_server', anonymous=True)
    robot_frame = rospy.get_param('~robot_frame', 'base_link')
    map_frame = rospy.get_param('~map_frame', 'map')
    RobotPoseSrv(map_frame, robot_frame)
    rospy.spin()
