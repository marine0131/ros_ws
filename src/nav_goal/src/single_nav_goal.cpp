#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include "move_base/move_base.h" 
#include <cstdlib>
using namespace std;

ros::NodeHandle nh;
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

void goal_callback(const move_base_msgs::MoveBaseGoal& msg){
    //tell the action client that we want to spin a tread by default
    ros::ServiceClient client=nh.serviceClient<std_srvs::Empty>("/move_base/clear_costmaps");
    MoveBaseClient ac("move_base", true);
    std_srvs::Empty srv;
    //wait for the action server to come up
    while(!ac.waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for the move_base action server to come up"); 
    }
    //send goal
    ac.sendGoal(msg);
    //call clear map service
    if(client.call(srv)){
        ROS_INFO("I got the goal and clear costmap"); 
    }
    ac.waitForResult();
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("I reached goal");
    else
        ROS_INFO("fail to reach the goal");
}

int main(int argc, char** argv){
    ros::init(argc, argv, "single_nav_goal");
    ros::Subscriber sub = nh.subscribe("goal",1,goal_callback);

    ros::spin();
    return 0;   
}
