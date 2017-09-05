#!/usr/bin/env python
import rospy
import math
from tf import TransformListener
from geometry_msgs.msg import PointStamped
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import OccupancyGrid

from api.msg import GridPoint
from api.srv import GridLaser, GridLaserResponse


class GridLaserSrv():

    def __init__(self, map_frame):
        self.map_frame = map_frame

        self.mapinfo = OccupancyGrid()
        self.laser_data = LaserScan()

        self.tf_listener = TransformListener()
        rospy.Subscriber('map', OccupancyGrid, self.map_callback)
        rospy.Subscriber('scan', LaserScan, self.laser_callback)
        rospy.Service('grid_laser', GridLaser, self.handle_gridlaser)

    def handle_gridlaser(self, req):
        laser_point = PointStamped()
        laser_point.header.frame_id = self.laser_data.header.frame_id
        res = GridLaserResponse()
        index = 0
        for r in self.laser_data.ranges:
            # laser point coordinate in laser frame
            laser_point.point.x = r * math.cos(self.laser_data.angle_min + self.laser_data.angle_increment * index)
            laser_point.point.y = r * math.sin(self.laser_data.angle_min + self.laser_data.angle_increment * index)
            index = index + 1

            # calc laser point coodinate in map frame
            temp = self.tf_listener.transformPoint(self.map_frame, laser_point)
            # calc laser point coordinate in map frame
            # temp.point.x = self.pose_msg.pose.position.x + temp.point.x
            # temp.point.y = self.pose_msg.pose.position.y + temp.point.y

            # calc laser point coordinate in grid map
            pp = GridPoint()
            pp.x = (int)((temp.point.x - self.mapinfo.info.origin.position.x) / self.mapinfo.info.resolution)
            pp.y = (int)((temp.point.y - self.mapinfo.info.origin.position.y) / self.mapinfo.info.resolution)

            res.laserPoint.append(pp)

        res.mapGridWidth = self.mapinfo.info.width
        res.mapGridHeight = self.mapinfo.info.height
        res.mapResolution = self.mapinfo.info.resolution
        res.msg = 'success'

        return res

    # map callback, update map data,actually, map data need no update
    def map_callback(self, msg):
        self.mapinfo.info = msg.info

    # laser callback, update laser data
    def laser_callback(self, msg):
        self.laser_data.header.frame_id = msg.header.frame_id
        self.laser_data.angle_increment = msg.angle_increment
        self.laser_data.angle_max = msg.angle_max
        self.laser_data.angle_min = msg.angle_min
        self.laser_data.ranges = msg.ranges


if __name__ == '__main__':
    rospy.init_node('gird_laser_server')
    map_frame = rospy.get_param('~map_frame', 'map')
    GridLaserSrv(map_frame)
    rospy.spin()