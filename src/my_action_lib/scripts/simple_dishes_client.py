#! /usr/bin/env python

import rospy
import roslib
import actionlib

from my_action_lib.msg import DoDishesAction, DoDishesGoal, DoDishesActionGoal

def active_callback():
    rospy.loginfo("goal active")

def done_callback(state, res):
    rospy.loginfo(state)
    rospy.loginfo('totoal dishes: %d',res.total_dishes_cleaned)

def feedback_callback(fb):
    rospy.loginfo('washing %d%%',int(fb.percent_complete*100))

if __name__ == '__main__':
    rospy.init_node('dishes_client')
    # create a client object
    client = actionlib.SimpleActionClient('do_dishes', DoDishesAction)
    # waite for server
    client.wait_for_server()

    # set goal
    goal = DoDishesGoal()
    goal.dishwasher_id = 100
    # gh = DoDishesActionGoal()
    # gh.goal.dishwasher_id = 100

    # send goal, set callback function
    client.send_goal(goal, done_callback, active_callback, feedback_callback)

    # waite for result
    client.wait_for_result(rospy.Duration.from_sec(5.0))
