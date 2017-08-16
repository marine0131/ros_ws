using namespace mygoals
{
	

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
}
