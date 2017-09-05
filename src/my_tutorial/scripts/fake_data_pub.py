#!/usr/bin/env python
import rospy
import os
import random
from geometry_msgs.msg import Twist, PoseStamped
from my_tutorial.msg import GridLaser, GridPose, GridPoint, Encoder, Sonar

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
    real_pose_pub = rospy.Publisher('pose', PoseStamped, queue_size = 1)
    sonar_pub = rospy.Publisher('range_dist', Sonar, queue_size = 1)

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

    pose_msg = PoseStamped()
    pose_msg.pose.position.x = 3.1
    pose_msg.pose.position.y = -0.1
    pose_msg.pose.position.z = 0
    pose_msg.pose.orientation.w = 1.0
    pose_msg.pose.orientation.x = 0
    pose_msg.pose.orientation.y = 0
    pose_msg.pose.orientation.z = 0

    sonar_msg = Sonar()
    sonar_msg.ranges = [10,11,12,13,14,15]

    rate = rospy.Rate(3)
    while not rospy.is_shutdown():
        global enc_msg
        grid_pose_msg = GridPose()
        grid_pose_msg.grid_x = random.randint(50,400)
        grid_pose_msg.grid_y = random.randint(50,500)

        pose_msg.pose.position.x += 0.01
        pose_msg.pose.position.y += 0.01
        if pose_msg.pose.position.x > 6.7 or pose_msg.pose.position.y > 9.0:
            pose_msg.pose.position.x = 3.0
            pose_msg.pose.position.y = -3.5

        real_pose_pub.publish(pose_msg)
        enc_pub.publish(enc_msg)
        pose_pub.publish(grid_pose_msg)
        laser_pub.publish(grid_laser_msg)
        sonar_pub.publish(sonar_msg)
        rate.sleep()
    rospy.spin()


if __name__ == '__main__':
    fakeDataPub()
