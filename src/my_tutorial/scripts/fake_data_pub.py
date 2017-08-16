#!/usr/bin/env python
import rospy
import os
from geometry_msgs.msg import Twist
from my_tutorial.msg import GridLaser, GridPose, GridPoint, Encoder

vel_msg = Twist()
enc_msg = Encoder()


def cmdvel_callback(msg):
    global vel_msg
    vel_msg.linear.x = msg.linear.x
    vel_msg.angular.z = msg.angular.z
    enc_msg.vx = msg.linear.x
    enc_msg.w = msg.angular.z


def fakeDataPub():
    rospy.init_node('fake_data_pub')

    rospy.Subscriber('cmd_vel', Twist, cmdvel_callback)
    laser_pub = rospy.Publisher('grid_laser', GridLaser, queue_size=1)
    pose_pub = rospy.Publisher('grid_pose', GridPose, queue_size=1)
    enc_pub = rospy.Publisher('encoder', Encoder, queue_size=1)

    grid_laser_msg = GridLaser()
    grid_laser_msg.mapGridHeight = 554
    grid_laser_msg.mapGridWidth = 467
    with open('/home/whj/catkin_ws/src/my_tutorial/scripts/fake_grid_laser.txt') as f:
        str_data = f.readlines()
    for line in str_data:
        point = GridPoint()
        point.x = int(line.split(',')[0])
        point.y = int(line.split(',')[1])
        grid_laser_msg.gridPnt.append(point)

    rate = rospy.Rate(3)
    while not rospy.is_shutdown():
        global enc_msg
        grid_pose_msg = GridPose()
        grid_pose_msg.grid_x = 169
        grid_pose_msg.grid_y = 258

        enc_pub.publish(enc_msg)
        pose_pub.publish(grid_pose_msg)
        laser_pub.publish(grid_laser_msg)
        rate.sleep()
    rospy.spin()


if __name__ == '__main__':
    fakeDataPub()
