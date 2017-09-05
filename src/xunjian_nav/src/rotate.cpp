#include <ros/ros.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include<geometry_msgs/Twist.h>
#include "move_base/move_base.h" 

ros::Publisher cmd_vel_pub;
ros::ServiceClient client;
std_srvs::Empty srv;
int count=0;
void get_pose_callback(const geometry_msgs::PoseWithCovarianceStamped& pose){
	geometry_msgs::Twist msg;
	msg.linear.x = msg.linear.y = msg.linear.z = 0;
	msg.angular.x = msg.angular.y = 0;
	msg.angular.z = 0.8;
	ROS_INFO("rotate for initialize");
	count = 2*(2*3.14/msg.angular.z + 0.5);	
	for(int i=0; i < count; i ++){
		cmd_vel_pub.publish(msg);
		ros::Duration(0.5).sleep();//sleep	
	}
	
	msg.angular.z = 0;
	cmd_vel_pub.publish(msg);
	if(client.call(srv)){
		ROS_INFO("rotate complete and clear costmap"); 
	}

}

int main(int argc, char** argv){
	ros::init(argc, argv, "rotate");
	ros::NodeHandle nh;	
	client = nh.serviceClient<std_srvs::Empty>("/move_base/clear_costmaps");
	ros::Subscriber init_pose_sub=nh.subscribe("/initialpose",50, get_pose_callback);
	cmd_vel_pub=nh.advertise<geometry_msgs::Twist>("/smoother_cmd_vel",50);

	ros::spin();
	return 0;
}
