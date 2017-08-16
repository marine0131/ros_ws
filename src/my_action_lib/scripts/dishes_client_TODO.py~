#! /usr/bin/env python

import rospy
import roslib
import actionlib

from my_action_lib.msg import DoDishesAction, DoDishesGoal, DoDishesActionGoal

def trans_callback(res):
    rospy.loginfo('ssss')
    rospy.loginfo(res)

def feedback_callback(fb):
    rospy.loginfo('washing %d%%',int(fb.feedback.percent_complete*100))

if __name__ == '__main__':
    rospy.init_node('dishes_client')
    # create a client object
    client = actionlib.ActionClient('do_dishes', DoDishesAction)
    # waite for server
    client.wait_for_server()

    # set goal
    gh = DoDishesActionGoal()
    gh.goal.dishwasher_id = 100

    # send goal, set callback function
    client.send_goal(gh.goal, trans_callback, feedback_callback)

    # waite for result
    client.wait_for_result(rospy.Duration.from_sec(5.0))
