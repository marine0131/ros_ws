/*
This program is introduce something about the message of nav_msgs/Odometry
it can publish the Odometry message,and the transformation of Tf.We use the 
virtual data,it means that surcribe the Odometry message is not from the wheels'
encoder data,but from the known velocity of mobile robots.
*/


#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include"xunjian_nav/Encoder.h"
#include<math.h>
#include<boost/assign/list_of.hpp>
#include<std_srvs/Empty.h>

xunjian_nav::Encoder enc;
double x=0.0;
double y=0.0;
double th=0.0;

void sensorMsg_Callback(const xunjian_nav::Encoder& msg){
    enc.leftEncoder=msg.leftEncoder;
    enc.rightEncoder=msg.rightEncoder;
    enc.vx = msg.vx;
    enc.w = msg.w;
}

bool handle_resetodom(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res){
    x = 0.0;
    y = 0.0;
    th = 0.0;
    return true;
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"odometry_pub");
	ros::NodeHandle n;
	
	ros::Subscriber sensor_sub=n.subscribe("encoder",1,sensorMsg_Callback);
	ros::Publisher odom_pub=n.advertise<nav_msgs::Odometry>("odom", 50);//定义发布里程计的对象odom_pub
	tf::TransformBroadcaster odom_broadcaster;//定义odom->base_link的坐标转换对象odom_broadcaster
    ros::ServiceServer odom_clear_srv = n.advertiseService("reset_odom", handle_resetodom);


	//定义左轮的线速度和右轮的线速度
	double vx=0;
    double w=0;
	//定义左右轮编码器的值
	//int right_enc=msg.rightEncoder;
	//int left_enc=msg.leftEncoder;
	//int right_enc_old=msg.leftEncoder;
	//int left_enc_old=msg.leftEncoder;
	int right_enc = 0;
	int left_enc = 0;
	int right_enc_old = 0;
	int left_enc_old = 0;

	ros::Time current_time,last_time;
	current_time=ros::Time::now();
	last_time=ros::Time::now();
	ros::Rate rate(20);//机器人发布消息的频率

while(n.ok())
{
	ros::spinOnce();
	//检查收到的信息
	current_time=ros::Time::now();
	double dt=(current_time-last_time).toSec();

	right_enc=enc.rightEncoder;
	left_enc=enc.leftEncoder;
 	
        //ROS_INFO("right left right1 left1: [%d,%d,%d,%d]",right_enc, left_enc, right_enc_old, left_enc_old);
	
	vx = (float)enc.vx/1000.0;
	w =  (float)enc.w/1000.0;
	x += vx*cos(th)*dt;
	y += vx*sin(th)*dt;
	th+= w*dt;
	//ROS_INFO("Yaw angle: %f",th*180.0/M_PI);
    while (th >= M_PI)  th -= 2*M_PI;
    while(th <= -M_PI)  th += 2*M_PI;
	ROS_INFO("Yaw angle: %f",th*180.0/M_PI);
//由机器人的偏航角得到机器人用四元素表示的姿态
//PS：实际中偏航角由六轴陀螺仪获得

    nav_msgs::Odometry odom;
	geometry_msgs::TransformStamped odom_trans;
	geometry_msgs::Quaternion odom_quat=tf::createQuaternionMsgFromYaw(th);
//时间戳信息
//通过tf发布坐标变换，这里的tf/tfMessage包含stamp信息，frame_id信息和child_frame_id信息以及translation和rotation信息
	odom_trans.header.stamp=current_time;
	odom_trans.header.frame_id="odom";
	odom_trans.child_frame_id="base_link";
	odom_trans.transform.translation.x=x;
	odom_trans.transform.translation.y=y;
	odom_trans.transform.translation.z=0.0;
	odom_trans.transform.rotation=odom_quat;

	odom_broadcaster.sendTransform(odom_trans);//发布tf变换消息


	odom.header.stamp=current_time;
	odom.header.frame_id="odom";
//得到里程计的位姿信息
	odom.pose.pose.position.x=x;
	odom.pose.pose.position.y=y;
	odom.pose.pose.position.z=0.0;
	odom.pose.pose.orientation=odom_quat;
	/*odom.pose.covariance = boost::assign::list_of(0.1) (0) (0) (0) (0) (0)
			                                       (0) (0.1) (0) (0) (0) (0)
												   (0) (0) (1e5) (0) (0) (0)
												   (0) (0) (0) (1e5) (0) (0)
												   (0) (0) (0) (0) (1e5) (0)
												   (0) (0) (0) (0) (0) (0.05);*/
    odom.pose.covariance = boost::assign::list_of(1e-3) (0) (0) (0) (0) (0)
                                                 (0) (1e-3) (0) (0) (0) (0)
                                                 (0) (0) (1e5) (0) (0) (0)
                                                 (0) (0) (0) (1e5) (0) (0)                                                   
                                                 (0) (0) (0) (0) (1e5) (0)
                                                 (0) (0) (0) (0) (0) (1e3);
//设置速度信息
    odom.child_frame_id="base_link";
	odom.twist.twist.linear.x=vx;
	odom.twist.twist.linear.y=0.0;
	odom.twist.twist.angular.z=w;
	/*odom.twist.covariance = boost::assign::list_of(0.001) (0) (0) (0) (0) (0)
			                                      (0) (0.001) (0) (0) (0) (0)
												  (0) (0) (1e5) (0) (0) (0)
												  (0) (0) (0) (1e5) (0) (0)
                                                  (0) (0) (0) (0) (1e5) (0)
												  (0) (0) (0) (0) (0) (0.01);*/
    odom.twist.covariance = boost::assign::list_of(1e-3) (0) (0) (0) (0) (0)
                                                 (0) (1e-3) (0) (0) (0) (0)
                                                 (0) (0) (1e5) (0) (0) (0)
                                                 (0) (0) (0) (1e5) (0) (0)
                                                 (0) (0) (0) (0) (1e5) (0)
                                                 (0) (0) (0) (0) (0) (1e3);
	odom_pub.publish(odom);//发布经过坐标变换后的里程计信息
	right_enc_old=right_enc;
	left_enc_old=left_enc;
	last_time=current_time; 

	rate.sleep();
}
    return 0;
} 
