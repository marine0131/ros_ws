#! /usr/bin/env python
import rospy
from move_base_msgs.msg import MoveBaseGoal, MoveBaseAction
from actionlib import SimpleActionClient
from std_srvs.srv import Empty, EmptyRequest, Trigger, TriggerResponse


class NavGoal():
    def __init__(self):
        rospy.Subscriber("goal", MoveBaseGoal, self.goal_callback)
        rospy.Service("nav/resume", Trigger, self.handle_resume)
        rospy.Service("nav/cancel", Trigger, self.handle_cancel)
        rospy.Service("nav/get_status", Trigger, self.handle_status)

        self.ac = SimpleActionClient('move_base', MoveBaseAction)
        self.current_goal = MoveBaseGoal()

    def goal_callback(self, msg):
        rospy.loginfo('recieve a goal')
        # clear map
        req = EmptyRequest()
        clear_map_client = rospy.ServiceProxy("move_base/clear_costmaps", Empty)
        clear_map_client.call(req)

        # call goal service
        self.ac.wait_for_server()

        self.ac.send_goal(msg)

        self.current_goal = msg  # save current goal
        # self.ac.wait_for_result()
        rospy.loginfo('send a goal')

    def done_callback(self):
        rospy.loginfo('action done')

    def active_callback(self):
        rospy.loginfo('goal actived')

    def feedback_callback(self):
        rospy.loginfo('feedback')

    def handle_resume(self, req):
        rospy.loginfo('resume current goal')
        res = TriggerResponse()
        self.goal_callback(self.current_goal) # restart last goal
        res.success = True
        res.message = "success"
        return res

    def handle_cancel(self, req):
        rospy.loginfo('cancel current goal')
        res = TriggerResponse()
        self.ac.cancel_goal()
        self.ac.cancel_all_goals()
        res.success = True
        res.message = "success"
        return res

    def handle_status(self, req):
        res = TriggerResponse()
        try:
            state = str(self.ac.get_state())
            res.success = True
            res.message = state
        except Exception:
            res.success = False
            res.message = 'can not get status'
        return res

if __name__ == '__main__':
    rospy.init_node("nav_goal")
    NavGoal()

    while not rospy.is_shutdown():
        rospy.spin()
