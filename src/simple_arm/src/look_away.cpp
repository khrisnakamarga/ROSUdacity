#include "ros/ros.h"
#include "simple_arm/GoToPosition.h"
#include <sensor_msgs/JointState.h> // read back the arm joint's position
#include <sensor_msgs/Image.h> // use camera data

class LookAway
{
public:
  LookAway()
  {
    // Client service capable of requesting services from safe_move
    client = n.serviceClient<simple_arm::GoToPosition>("/arm_mover/safe_move");

    //Topic you want to subscribe
    sub1 = n.subscribe("/simple_arm/joint_states", 10, &LookAway::joint_states_callback, this);
    sub2 = n.subscribe("rgb_camera/image_raw", 10, &LookAway::look_away_callback, this);
  }

  // This callback function continuously executes and reads the image data
  void look_away_callback(const sensor_msgs::Image img)
  {

      bool uniform_image = true;

      // Loop through each pixel in the image and check if its equal to the first one
      for (int i = 0; i < img.height * img.step; i++) {
          if (img.data[i] - img.data[0] != 0) {
              uniform_image = false;
              break;
          }
      }

      // If the image is uniform and the arm is not moving, move the arm to the center
      if (uniform_image == true && moving_state == false)
          move_arm_center();
  }


  // This callback function continuously executes and reads the arm joint angles position
  void joint_states_callback(const sensor_msgs::JointState js)
  {
      // Get joints current position
      std::vector<double> joints_current_position = js.position;

      // Define a tolerance threshold to compare double values
      double tolerance = 0.0005;

      // Check if the arm is moving by comparing its current joints position to its latest
      if (fabs(joints_current_position[0] - joints_last_position[0]) < tolerance && fabs(joints_current_position[1] - joints_last_position[1]) < tolerance)
          moving_state = false;
      else {
          moving_state = true;
          joints_last_position = joints_current_position;
      }
  }


private:
  ros::NodeHandle n; // node handle to communicate with ROS
  ros::ServiceClient client; // client service capable of requesting services from save_move
  ros::Subscriber sub1; // read joint positions
  ros::Subscriber sub2; // read camera image
  bool moving_state = false;
  std::vector<double> joints_last_position{ 0, 0 };

  // This function calls the safe_move service to safely move the arm to the center position
  void move_arm_center()
  {
      ROS_INFO_STREAM("Moving the arm to the center");

      // Request centered joint angles [1.57, 1.57]
      simple_arm::GoToPosition srv;
      srv.request.joint_1 = 1.57;
      srv.request.joint_2 = 1.57;

      // Call the safe_move service and pass the requested joint angles
      if (!client.call(srv))
          ROS_ERROR("Failed to call service safe_move");
  }
};//End of class SubscribeAndPublish

int main(int argc, char **argv)
{
  //Initiate ROS
  ros::init(argc, argv, "look_away");

  //Create an object of class SubscribeAndPublish that will take care of everything
  LookAway lookAway;

  ros::spin();

  return 0;
}
