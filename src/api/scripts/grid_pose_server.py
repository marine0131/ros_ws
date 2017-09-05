#!/usr/bin/env python
import rospy
from tf import TransformListener
from geometry_msgs.msg import PoseStamped, PointStamped
from nav_msgs.msg import OccupancyGrid
from move_base_msgs.msg import MoveBaseGoal
from api.srv import GridPose, GridPoseResponse, SetGoal, SetGoalResponse


class RobotPoseSrv():
    def __init__(self, map_frame, robot_frame):
        self.robot_frame = robot_frame
        self.map_frame = map_frame
        self.pose = PoseStamped()
        self.mapinfo = OccupancyGrid()
        rospy.Subscriber("pose", PoseStamped, self.pose_callback)
        rospy.Subscriber("map", OccupancyGrid, self.map_callback)
        # pose_pub = rospy.Publisher('grid_pose',GridPose,queue_size=10)
        rospy.Service('grid_pose', GridPose, self.handle_pose)
        rospy.Service('grid_goal', SetGoal, self.handle_goal)
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
        head = PointStamped()
        head.header.frame_id = self.robot_frame
        head.point.x = 0.4  # afront of robot
        try:
            grid_head = self.tf_listener.transformPoint(self.map_frame, head)
            grid_pose.pose.x = int((self.pose.pose.position.x - self.mapinfo.info.origin.position.x) / self.mapinfo.info.resolution)
            grid_pose.pose.y = int((self.pose.pose.position.y - self.mapinfo.info.origin.position.y) / self.mapinfo.info.resolution)
            grid_pose.head.x = int((grid_head.point.x - self.mapinfo.info.origin.position.x) / self.mapinfo.info.resolution)
            grid_pose.head.y = int((grid_head.point.y - self.mapinfo.info.origin.position.y) / self.mapinfo.info.resolution)
            grid_pose.msg = 'success'
        except Exception:
            grid_pose.msg = 'fail to request robot pose'
        return grid_pose

    def handle_goal(self, req):
        g = MoveBaseGoal()
        res = SetGoalResponse()
        try:
            goal_pub = rospy.Publisher('goal', MoveBaseGoal, queue_size=10)
            g.target_pose.pose.position.x = req.grid_x * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.x
            g.target_pose.pose.position.y = req.grid_y * self.mapinfo.info.resolution + self.mapinfo.info.origin.position.y
            goal_pub.publish(g)
            res.msg = 'success'
        except Exception:
            res.msg = 'set goal failed'
        return res


if __name__ == '__main__':
    rospy.init_node('grid_pose_server', anonymous=True)
    robot_frame = rospy.get_param('~robot_frame', 'base_link')
    map_frame = rospy.get_param('~map_frame', 'map')
    RobotPoseSrv(map_frame, robot_frame)
    rospy.spin()