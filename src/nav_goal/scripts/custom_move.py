#! /usr/bin/env python

import rospy
from geometry_msgs.msg import PoseWithCovarianceStamped, Twist
from std_srvs.srv import Empty, EmptyRequest, Trigger, TriggerResponse
from api_msgs.msg import CustomMoveCmd


class Move():
    def __init__(self, vel_topic):
        rospy.Subscriber('initialpose', PoseWithCovarianceStamped,
                         self.initialpose_callback)

        rospy.Subscriber('custom_move_cmd', CustomMoveCmd,
                         self.custommove_callback)

        rospy.Service('get_move_status', Trigger,
                      self.handle_movestatus)

        self.cmd_vel_pub = rospy.Publisher(vel_topic, Twist, queue_size=1)

        self.clear_map_client = rospy.ServiceProxy('move_base/clear_costmaps',
                                                   Empty)

        self.move_complete = False
        self.move_msg = ''

    # when initialize, rotate 360
    def initialpose_callback(self, msg):
        # clean global var
        self.move_complete = False
        self.move_msg = ''
        vel = Twist()
        vel.angular.z = 0.8
        rospy.loginfo('rotate for initialize')
        self.move_msg = 'in progress'
        count = int(2 * (2 * 3.14 / vel.angular.z + 0.5))
        for i in range(count):
            self.cmd_vel_pub.publish(vel)
            rospy.sleep(rospy.Duration(0.5))

        vel.angular.z = 0
        self.cmd_vel_pub.publish(vel)

        req = EmptyRequest()
        rospy.wait_for_service('move_base/clear_costmaps')
        if self.clear_map_client.call(req):
            rospy.loginfo('rotate complete and map cleared')
            self.move_complete = True
            self.move_msg = 'success'
        else:
            self.move_msg = 'failed'

    # custom move, just for move forward and backword, turn clockwise and
    # anticlockwise
    def custommove_callback(self, msg):
        # clean the global var
        self.move_complete = False
        self.move_msg = ''
        vel = Twist()
        if msg.linear_or_angular == 'linear':
            vel.linear.x = msg.vel
        elif msg.linear_or_angular == 'angular':
            vel.angular.z = msg.vel
        else:
            rospy.logwarn('undefined custom move cmd')
            self.move_msg = 'undefined custom move cmd'
            return

        self.move_msg = 'in progress'
        count = int(2 * msg.dist / msg.vel + 0.5)
        for i in range(count):
            self.cmd_vel_pub.publish(vel)
            rospy.sleep(rospy.Duration(0.5))

        vel.linear.x = 0.0
        self.cmd_vel_pub.publish(vel)
        self.move_complete = True
        self.move_msg = 'success'

    # get initialize status
    def handle_movestatus(self, req):
        res = TriggerResponse()
        res.success = self.move_complete
        res.message = self.move_msg
        return res


if __name__ == '__main__':
    rospy.init_node('custom_move')
    vel_topic = rospy.get_param('~vel_topic', 'cmd_vel')
    Move(vel_topic)
    while not rospy.is_shutdown():
        rospy.spin()
