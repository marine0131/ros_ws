#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PoseStamped.h>

int main(int argc, char **argv) {
  ros::init(argc, argv, "pose_publisher");
  ros::NodeHandle nh;
  ros::NodeHandle private_nh("~");
  
  double publish_frequency;
  std::string map_frame, base_frame;
  ros::Publisher pose_publisher;
  
  private_nh.param<double>("publish_frequency", publish_frequency, 10);
  private_nh.param<std::string>("map_frame", map_frame, "map");
  private_nh.param<std::string>("base_frame", base_frame, "base_link");
  
  pose_publisher = nh.advertise<geometry_msgs::PoseStamped>("pose", 1);
  
  tf::TransformListener listener;
  std::string tf_prefix = tf::getPrefixParam(private_nh);
  
  ros::Rate rate(publish_frequency);
  while(nh.ok()) {
    tf::StampedTransform transform;
    bool tf_ok = true;
    try {
      listener.lookupTransform(map_frame, base_frame, ros::Time(0), transform);
    } catch(tf::TransformException ex) {
      //ROS_ERROR("-------> %s", ex.what());
      tf_ok = false;
    }
    
    if(tf_ok) {
      geometry_msgs::PoseStamped pose_stamped;
      pose_stamped.header.stamp = ros::Time::now();
      pose_stamped.header.frame_id = tf_prefix+"/"+map_frame;
      
      pose_stamped.pose.position.x = transform.getOrigin().getX();
      pose_stamped.pose.position.y = transform.getOrigin().getY();
      pose_stamped.pose.position.z = transform.getOrigin().getZ();
      
      pose_stamped.pose.orientation.x = transform.getRotation().getX();
      pose_stamped.pose.orientation.y = transform.getRotation().getY();
      pose_stamped.pose.orientation.z = transform.getRotation().getZ();
      pose_stamped.pose.orientation.w = transform.getRotation().getW();
      
      pose_publisher.publish(pose_stamped);
    }
    
    rate.sleep();
  }
  
  return 0;
}
