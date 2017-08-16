#! /usr/bin/env python

import rospy
import roslib
import actionlib

from my_action_lib.msg import DoDishesAction, DoDishesFeedback, DoDishesResult, DoDishesActionFeedback, DoDishesActionResult


class DishesServer:
    def __init__(self):
        self.server = actionlib.ActionServer('do_dishes', DoDishesAction, self.execute_dishes, False)
        self.server.start()

    def execute_dishes(self, gh):
        goal = gh.goal.goal

        i = 0
        if not isinstance(goal.dishwasher_id, int):
            rospy.loginfo('rejected')
            gh.set_rejected(None, 'server reject this goal')
        else:
            rospy.loginfo('accepted')
            gh.set_accepted()

            fb = DoDishesActionFeedback()
            res = DoDishesActionResult()

            rate =rospy.Rate(25)
            while i < goal.dishwasher_id:
                i += 1
                fb.feedback.percent_complete = i / float(goal.dishwasher_id)
                # percent.percent_complete = i /float(goal.dishwasher_id)
                # self.server.publish_feedback(percent)
                gh.publish_feedback(fb.feedback)
                rospy.loginfo(fb.feedback)
                rate.sleep()

            # res.total_dishes_cleaned = i
            res.result.total_dishes_cleaned = i
            # self.server.set_succeeded(res)
            gh.set_succeeded(res.result)


if __name__ == '__main__':
    rospy.init_node('dishes_server')
    server = DishesServer()
    rospy.spin()
