#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>


typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

class Goals {
	public:
		Goals(){
		}
		void set_alias(string a){
			alias = a;
		}
		void set_frame(string frame_id){
			goal.target_pose.header.frame_id = frame_id;
		}
		move_base_msgs::MoveBaseGoal get_goal(){
			return goal;
		}
		void set_position(double x, double y, double z ){
			goal.target_pose.pose.position.x = x;
			goal.target_pose.pose.position.y = y;
			goal.target_pose.pose.position.z = z;
		}
	private:
		string alias;
		move_base_msgs::MoveBaseGoal goal;
};
#define DOOR 0
#define SERVER 1
#define BOSS 2
#define WC 3
#define ROOM 4
#define GATE 5

Goals goals[20];
goals[0].set_frame("map");
goals[0].set_position(1.45884692669,0.41893029213,0);
goals[0].set_quat(0,0,0.380679358544,0.924707102805);
goals[1].set_frame("map");
goals[1].set_position(6.51145744324,-2.35952734947,0);
goals[1].set_quat(0,0,0.909674541736,-0.415321836794);
goals[2].set_frame("map");
goals[2].set_position(-4.2894,-7.019709,0);
goals[2].set_quat(0,0,0.954226403507,-0.299085223391);
goals[3].set_frame("map");
goals[3].set_position(11.3937091827,0.897811412811,0);
goals[3].set_quat(0,0,0.424219369561,0.905559454972);
goals[4].set_frame("map");
goals[4].set_position(-0.576218009,1.0124691725,0);
goals[4].set_quat(0,0,-0.3492525274,0.9370286399);
goals[5].set_frame("map");
goals[5].set_position(3.52077460289,-6.87122631073,0);
goals[5].set_quat(0,0,-0.341993935225,0.939702159341);

int main(int argc, char** argv){
	ros::init(argc, argv, "nav_goal");
	//tell the action client that we want to spin a tread by default
	MoveBaseClient ac("move_base", true);
	
	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0))){
		ROS_INFO("Waiting for the move_base action server to come up");	
	}
	int p[2]={DOOR, ROOM};
	int ii = 0;
	while(ros::ok()){
		if (ii>=2) ii = 0;
		ac.sendGoal(goals[p[ii].get_goal());
		ii ++;	

		ac.waitForResult();
		if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
			ROS_INFO("goal reached");
		else
			ROS_INFO("fail to reach the goal");
	}
	return 0;	
}
