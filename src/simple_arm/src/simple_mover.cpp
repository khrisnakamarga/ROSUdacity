#include "ros/ros.h" // ROS library
#include "std_msgs/Float64.h" // Message format

int main(int argc, char** argv) {
	// Initialize the arm_mover node
	ros::init(argc, argv, "arm_mover"); // arm_mover is the name of the node

	// Create a handle to the arm_mover node
	ros::NodeHandle n; // fully initialize, permits to talk to ros master

	// Create a publisher that can publish a std_msgs::Float64 message on the /simple_arm/joint_1_position_controller/command topic
	ros::Publisher joint1_pub = n.advertise<std_msgs::Float64>("/simple_arm/joint_1_position_controller/command", 10);
	// Create a publisher that can publish a std_msgs::Float64 message on the /simple_arm/joint_2_position_controller/command topic
	ros::Publisher joint2_pub = n.advertise<std_msgs::Float64>("/simple_arm/joint_2_position_controller/command", 10);

	// Set Loop frequency of 10Hz
	ros::Rate loop_rate(10); // if the frequency is too low, high latency. If the freq is too high, unneccessary CPU usage

	int start_time, elapsed;

	// Get ROS start start_time
	while (not start_time) {
		start_time = ros::Time::now().toSec();
	}

	while (ros::ok()) { // while the node is still running
		// Get ROS elapsed time
		elapsed = ros::Time::now().toSec() - start_time; // current time - start time

		// Set the arm joint angles
		std_msgs::Float64 joint1_angle, joint2_angle;
		joint1_angle.data = sin(2 * M_PI * 0.1 * elapsed) * (M_PI / 2); // sine wave with freq of 10Hz, magnitude of -PI/2 to PI/2
		joint2_angle.data = sin(2 * M_PI * 0.1 * elapsed) * (M_PI / 2);

		// Publish the arm joint angles
		joint1_pub.publish(joint1_angle);
		joint2_pub.publish(joint2_angle);

		// Sleep for the time remaining until 10 Hz is reached
		loop_rate.sleep();
	}

	return 0;
}
