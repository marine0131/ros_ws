#! /usr/bin/env python

import rospy
import json
from tf import TransformListener
from geometry_msgs.msg import PointStamped
from nav_msgs.msg import OccupancyGrid
from xunjian_nav.msg import Sonar
from api.srv import GridSonar, GridSonarResponse


class GridSonarSrv():
    def __init__(self, SONAR_FRAME, MAP_FRAME):
        # GOAL_LIST_DIR = rospy.get_param('~goal_list_dir')
        # self.path = MAP_DIR
        self.sonar_frame = SONAR_FRAME
        self.map_frame = MAP_FRAME
        self.mapinfo = OccupancyGrid()
        self.sonar_msg = []

        self.tf_listener = TransformListener()
        rospy.Service('grid_sonar', GridSonar, self.handle_gridsonar)
        rospy.Subscriber("map",OccupancyGrid, self.map_callback)  # used for grid goal list
        rospy.Subscriber('range_dist', Sonar, self.sonar_callback)

    def handle_gridsonar(self, req):
        i = 0
        sonar = {}
        for t in self.sonar_frame:
            pt = {}
            sonar_pt = PointStamped()
            sonar_pt.header.frame_id = t
            # transform sonar center point from sonar to base_link
            temp = self.tf_listener.transformPoint(self.map_frame, sonar_pt)
            # calc sonar center coordinate in map
            # temp.point.x = self.pose_msg.pose.position.x + temp.point.x
            # temp.point.y = self.pose_msg.pose.position.y + temp.point.y
            # calc sonar center grid in map
            start_x = (int)((temp.point.x - self.mapinfo.info.origin.position.x)/self.mapinfo.info.resolution)
            start_y = (int)((temp.point.y - self.mapinfo.info.origin.position.y)/self.mapinfo.info.resolution)

            # calc sonar end point from sonar to base_link
            sonar_pt.point.x = self.sonar_msg[i] / 100.0
            i += 1
            temp = self.tf_listener.transformPoint(self.map_frame, sonar_pt)
            # calc sonar end coordinate in map
            # temp.point.x = self.pose_msg.pose.position.x + temp.point.x
            # temp.point.y = self.pose_msg.pose.position.y + temp.point.y
            # calc sonar end grid in map
            end_x = (int)((temp.point.x - self.mapinfo.info.origin.position.x)/self.mapinfo.info.resolution)
            end_y = (int)((temp.point.y - self.mapinfo.info.origin.position.y)/self.mapinfo.info.resolution)

            pt['start'] = [start_x, start_y]
            pt['end'] = [end_x, end_y]
            sonar[t] = pt

        sonar_response = GridSonarResponse()
        sonar_response.data = json.dumps(sonar)
        sonar_response.msg = 'success'
        return sonar_response

    def map_callback(self, msg):
        self.mapinfo.info = msg.info

    def sonar_callback(self, msg):
        self.sonar_msg = map(int, msg.ranges)


if __name__ == "__main__":
    rospy.init_node('grid_sonar_server')
    sonar_frame = rospy.get_param('~sonar_frame').split(',')
    map_frame = rospy.get_param('~map_frame', 'map')
    GridSonarSrv(sonar_frame, map_frame)
    rospy.spin()
