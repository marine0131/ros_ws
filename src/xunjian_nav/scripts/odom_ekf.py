#!/usr/bin/env python

""" odom_ekf.py - Version 1.1 2013-12-20

    Republish the /robot_pose_ekf/odom_combined topic which is of type
    geometry_msgs/PoseWithCovarianceStamped as an equivalent message of
    type nav_msgs/Odometry so we can view it in RViz.

    Created for the Pi Robot Project: http://www.pirobot.org
    Copyright (c) 2012 Patrick Goebel.  All rights reserved.

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.5

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details at:

    http://www.gnu.org/licenses/gpl.html

"""

import rospy
from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist
from xunjian_nav.msg import Encoder

ODOM_POSE_COVARIANCE = [1e-3, 0, 0, 0, 0, 0,
                        0, 1e-3, 0, 0, 0, 0,
                        0, 0, 1e6, 0, 0, 0,
                        0, 0, 0, 1e6, 0, 0,
                        0, 0, 0, 0, 1e6, 0,
                        0, 0, 0, 0, 0, 1e3]
ODOM_POSE_COVARIANCE2 = [1e-9, 0, 0, 0, 0, 0,
                         0, 1e-3, 1e-9, 0, 0, 0,
                         0, 0, 1e6, 0, 0, 0,
                         0, 0, 0, 1e6, 0, 0,
                         0, 0, 0, 0, 1e6, 0,
                         0, 0, 0, 0, 0, 1e-9]

ODOM_TWIST_COVARIANCE = [1e-3, 0, 0, 0, 0, 0,
                         0, 1e-3, 0, 0, 0, 0,
                         0, 0, 1e6, 0, 0, 0,
                         0, 0, 0, 1e6, 0, 0,
                         0, 0, 0, 0, 1e6, 0,
                         0, 0, 0, 0, 0, 1e3]
ODOM_TWIST_COVARIANCE2 = [1e-9, 0, 0, 0, 0, 0,
                          0, 1e-3, 1e-9, 0, 0, 0,
                          0, 0, 1e6, 0, 0, 0,
                          0, 0, 0, 1e6, 0, 0,
                          0, 0, 0, 0, 1e6, 0,
                          0, 0, 0, 0, 0, 1e-9]

class OdomEKF():
    def __init__(self):
        # Give the node a name
        rospy.init_node('odom_ekf', anonymous=False)

        # Publisher of type nav_msgs/Odometry
        self.ekf_pub = rospy.Publisher('output', Odometry, queue_size=5)

        # Wait for the /odom_combined topic to become available
        rospy.wait_for_message('input', PoseWithCovarianceStamped)
        rospy.wait_for_message('encoder',Sensor)

        # Subscribe to the /odom_combined topic
        rospy.Subscriber('input', PoseWithCovarianceStamped, self.pub_ekf_odom)
        rospy.Subscriber('encoder',Sensor,self.pub_ekf_twist)

        self.odom = Odometry()
        self.odom_in=Odometry()
        self.twst = Twist()
        rate = rospy.Rate(20)
        while True:
            self.odom.header = self.odom_in.header
            self.odom.header.frame_id = '/odom'
            self.odom.child_frame_id = 'base_link'

            self.odom.pose = self.odom_in.pose
            self.odom.twist.twist = self.twst

            if odom.twist.linear.x == 0 and odom.twist.angular.z == 0:
                odom.pose.covariance=ODOM_POSE_COVARIANCE2
                odom.twist.covariance=ODOM_POSE_COVARIANCE2
            else:
                odom.pose.covariance=ODOM_POSE_COVARIANCE
                odom.twist.covariance=ODOM_POSE_COVARIANCE

            self.ekf_pub.publish(odom)
            rospy.sleep()
        rospy.spin()

    def pub_ekf_odom(self, msg1):
        self.odom_in.header = msg1.header
        self.odom_in.pose = msg1.pose

    def pub_ekf_twist(self, msg2):
        self.twst.linear.x = msg2.vx
        self.twst.linear.y = 0
        self.twst.angular.z = msg2.w

if __name__ == '__main__':
    try:
        OdomEKF()
    except:
        pass



