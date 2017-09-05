#! /usr/bin/env python

import rospy
import json
import os
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseGoal
from nav_msgs.msg import OccupancyGrid
from api.msg import NavGoal
from api.srv import AddGoal, AddGoalResponse, DelGoal, DelGoalResponse, GoalList, GoalListResponse


class GoalListSrv():
    def __init__(self, path):
        # GOAL_LIST_DIR = rospy.get_param('~goal_list_dir')
        # self.path = MAP_DIR
        self.path = path
        self.mapinfo = OccupancyGrid()
        self.pose_msg = PoseStamped()
        rospy.Service('add_goal', AddGoal, self.handle_addgoal)
        rospy.Service('del_goal', DelGoal, self.handle_delgoal)
        rospy.Service('goal_list', GoalList, self.handle_goallist)
        rospy.Subscriber("map",OccupancyGrid, self.map_callback) # used for grid goal list
        rospy.Subscriber('pose', PoseStamped, self.pose_callback)
        rospy.Subscriber('nav_to_goal', NavGoal, self.navgoal_callback)
        # for test
        # rospy.Subscriber('map_metadata', MapMetaData, self.pose_callback)

    def navgoal_callback(self, msg):
        goal_pub = rospy.Publisher('goal', MoveBaseGoal, queue_size=1)
        goal_msg = MoveBaseGoal()

        file_name = self.path + msg.mapName + '.json'
        try:
            with open(file_name, 'r') as f:
                goal_dict = json.load(f)
        except IOError:
            rospy.loginfo('fail to open file')

        if msg.goalName in goal_dict:
            goal_msg.target_pose.pose.orientation.x = goal_dict[msg.goalName]['orientation']['x']
            goal_msg.target_pose.pose.orientation.y = goal_dict[msg.goalName]['orientation']['y']
            goal_msg.target_pose.pose.orientation.z = goal_dict[msg.goalName]['orientation']['z']
            goal_msg.target_pose.pose.orientation.w = goal_dict[msg.goalName]['orientation']['w']
            goal_msg.target_pose.pose.position.x = goal_dict[msg.goalName]['position']['x']
            goal_msg.target_pose.pose.position.y = goal_dict[msg.goalName]['position']['y']
            goal_msg.target_pose.pose.position.z = goal_dict[msg.goalName]['position']['z']
        else:
            rospy.loginfo('goal does not exit')
            return
        # rospy.loginfo(goal_msg)
        goal_pub.publish(goal_msg)

    def pose_callback(self, msg):
        self.pose_msg = msg

    def map_callback(self, msg):
        self.mapinfo.info = msg.info

    def handle_addgoal(self, req):
        res = AddGoalResponse()
        file_name = self.path + req.mapName + '.json'
        pose_dict = {}
        quat_dict = {}
        grid_dict = {}
        # for test
        # pose_dict['x'] = msg.origin.position.x
        # pose_dict['y'] = msg.origin.position.y
        # pose_dict['z'] = msg.origin.position.z
        # quat_dict['x'] = msg.origin.orientation.x
        # quat_dict['y'] = msg.origin.orientation.y
        # quat_dict['z'] = msg.origin.orientation.z
        # quat_dict['w'] = msg.origin.orientation.w
        pose_dict['x'] = self.pose_msg.pose.position.x
        pose_dict['y'] = self.pose_msg.pose.position.y
        pose_dict['z'] = self.pose_msg.pose.position.z
        quat_dict['x'] = self.pose_msg.pose.orientation.x
        quat_dict['y'] = self.pose_msg.pose.orientation.y
        quat_dict['z'] = self.pose_msg.pose.orientation.z
        quat_dict['w'] = self.pose_msg.pose.orientation.w
        grid_dict['x'] = (int)((self.pose_msg.pose.position.x - self.mapinfo.info.origin.position.x) / self.mapinfo.info.resolution)
        grid_dict['y'] = (int)((self.pose_msg.pose.position.y - self.mapinfo.info.origin.position.y) / self.mapinfo.info.resolution)
        grid_dict['z'] = 0

        curr_pose = {}
        curr_pose['position'] = pose_dict
        curr_pose['orientation'] = quat_dict
        curr_pose['grid'] = grid_dict

        goal_dict = {}
        if os.path.exists(file_name):
            with open(file_name, 'r') as load_f:
                goal_dict = json.load(load_f)

        if not goal_dict.get(req.goalName):
            goal_dict[req.goalName] = curr_pose
        else:
            res.res = 'ducplicated goal name'
            return res

        with open(file_name, 'w') as f:
            json.dump(goal_dict, f)
        res.res = req.goalName
        return res

    def handle_delgoal(self, req):
        res = DelGoalResponse()
        file_name = self.path + req.mapName + '.json'

        if not os.path.exists(file_name):
            res.res = 'goal list not exit'
            return res

        with open(file_name, 'r') as load_f:
            goal_dict = json.load(load_f)
        try:
            goal_dict.pop(req.goalName)
        except Exception as err:
            res.res = 'goal ' + str(err) + ' not exit'
            return res

        with open(file_name, 'w') as f:
            json.dump(goal_dict, f)
        res.res = req.goalName
        return res

    def handle_goallist(self, req):
        res = GoalListResponse()
        file_name = self.path + req.mapName + '.json'

        if not os.path.exists(file_name):
            res.goalList = 'goal list not exist'
            return res
        with open(file_name, 'r') as f:
            goal_dict = json.load(f)

        # key_list = list(goal_dict.keys())
        # res.goalList = ';'.join(key_list)
        res.goalList = json.dumps(goal_dict)
        return res


if __name__ == "__main__":
    rospy.init_node('goal_server')
    pkg_path = rospy.get_param('~api_pkg_path', '/home/whj/catkin_ws/src/api/')
    goal_path = pkg_path + 'goals/'
    GoalListSrv(goal_path)
    rospy.spin()
