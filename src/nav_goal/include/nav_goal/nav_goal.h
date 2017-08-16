#ifndef NAV_GOAL_H
#define NAV_GOAL_H
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
using namespace std;
class Goals{
	public:
		Goals();
		void set_alias(string a);
		void set_frame(string frame_id);
		move_base_msgs::MoveBaseGoal get_goal();
		void set_position(double x, double y, double z );
	private:
		string alias;
		move_base_msgs::MoveBaseGoal goal;
};
#endif
