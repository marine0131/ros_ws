#include "ros/ros.h"
#include "std_msgs/Header.h"
#include "sensor_msgs/Range.h"
#include "xunjian_nav/Ultrasound.h"
#include <time.h>
#include <tf/transform_broadcaster.h>

#define FIELD_OF_VIEW 0.5
#define MAX_RANGE 0.8
#define MIN_RANGE 0.02

sensor_msgs::Range ultra_msg1;
sensor_msgs::Range ultra_msg2;
sensor_msgs::Range ultra_msg3;
sensor_msgs::Range ultra_msg4;
sensor_msgs::Range ultra_msg5;
sensor_msgs::Range ultra_msg6;	

void range_callback(const xunjian_nav::Ultrasound& ut){
	float u1=(float)ut.ultra_1/100.0f;
	float u2=(float)ut.ultra_2/100.0f;
	float u3=(float)ut.ultra_3/100.0f;
	float u4=(float)ut.ultra_4/100.0f;
	float u5=(float)ut.ultra_5/100.0f;
	float u6=(float)ut.ultra_6/100.0f;
	ultra_msg1.range = u1;//>ultra_msg1.max_range?ultra_msg1.max_range:u1;
	ultra_msg2.range = u2;//>ultra_msg2.max_range?ultra_msg2.max_range:u2;
	ultra_msg3.range = u3;//>ultra_msg3.max_range?ultra_msg3.max_range:u3;
	ultra_msg4.range = u4;//>ultra_msg4.max_range?ultra_msg4.max_range:u4;
	ultra_msg5.range = u5;//>ultra_msg5.max_range?ultra_msg5.max_range:u5;
	ultra_msg6.range = u6;//>ultra_msg6.max_range?ultra_msg6.max_range:u6;
	printf("ultra:%f,%f,%f,%f,%f,%f",u1,u2,u3,u4,u5,u6);

}

int main(int argc, char **argv){
	ros::init(argc,argv,"ultrasound_pub");
	ros::NodeHandle nh;
	ros::Subscriber range_msg = nh.subscribe("range_dist", 1000, range_callback); //subscribe ultra data set
	ros::Publisher ultra_pub1=nh.advertise<sensor_msgs::Range>("ultra_dist1",100);
	ros::Publisher ultra_pub2=nh.advertise<sensor_msgs::Range>("ultra_dist2",100);
	ros::Publisher ultra_pub3=nh.advertise<sensor_msgs::Range>("ultra_dist3",100);
	ros::Publisher ultra_pub4=nh.advertise<sensor_msgs::Range>("ultra_dist4",100);
	ros::Publisher ultra_pub5=nh.advertise<sensor_msgs::Range>("ultra_dist5",100);
	ros::Publisher ultra_pub6=nh.advertise<sensor_msgs::Range>("ultra_dist6",100);
	
	ros::Rate loop_rate(20);
	
	while(ros::ok()){
		std_msgs::Header header1;
		std_msgs::Header header2;
		std_msgs::Header header3;
		std_msgs::Header header4;
		std_msgs::Header header5;
		std_msgs::Header header6;
		header1.stamp = ros::Time::now();
		header2.stamp = ros::Time::now();
		header3.stamp = ros::Time::now();
		header4.stamp = ros::Time::now();
		header5.stamp = ros::Time::now();
		header6.stamp = ros::Time::now();
		header1.frame_id = "/ut1";
		header2.frame_id = "/ut2";
		header3.frame_id = "/ut3";
		header4.frame_id = "/ut4";
		header5.frame_id = "/ut5";
		header6.frame_id = "/ut6";
		
		ultra_msg1.header = header1;
		ultra_msg2.header = header2;
		ultra_msg3.header = header3;
		ultra_msg4.header = header4;
		ultra_msg5.header = header5;
		ultra_msg6.header = header6;
		
		ultra_msg1.field_of_view = FIELD_OF_VIEW;
		ultra_msg2.field_of_view = FIELD_OF_VIEW;
		ultra_msg3.field_of_view = FIELD_OF_VIEW;
		ultra_msg4.field_of_view = FIELD_OF_VIEW;
		ultra_msg5.field_of_view = FIELD_OF_VIEW;
		ultra_msg6.field_of_view = FIELD_OF_VIEW;

		ultra_msg1.min_range = MIN_RANGE;
		ultra_msg2.min_range = MIN_RANGE;
		ultra_msg3.min_range = MIN_RANGE;
		ultra_msg4.min_range = MIN_RANGE;
		ultra_msg5.min_range = MIN_RANGE;
		ultra_msg6.min_range = MIN_RANGE;

		ultra_msg1.max_range = MAX_RANGE;
		ultra_msg2.max_range = MAX_RANGE;
		ultra_msg3.max_range = MAX_RANGE;
		ultra_msg4.max_range = MAX_RANGE;
		ultra_msg5.max_range = MAX_RANGE;
		ultra_msg6.max_range = MAX_RANGE;

		ultra_pub1.publish(ultra_msg1);
		ultra_pub2.publish(ultra_msg2);
		ultra_pub3.publish(ultra_msg3);
		ultra_pub4.publish(ultra_msg4);
		ultra_pub5.publish(ultra_msg5);
		ultra_pub6.publish(ultra_msg6);

		ros::spinOnce();
		loop_rate.sleep();

	}
}
