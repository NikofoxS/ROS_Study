//by foxchys chy_s@outlook.com


#include<boost/thread/thread.hpp>

#include<iostream>
#include<ros/ros.h>
#include<std_srvs/Empty.h>
#include<std_srvs/Trigger.h>
#include<geometry_msgs/PoseStamped.h>
#include<geometry_msgs/Pose.h>


#include <moveit/move_group_interface/move_group_interface.h>
// #include <moveit/planning_scene_interface/planning_scene_interface.h>

// #include <moveit_msgs/DisplayRobotState.h>
// #include <moveit_msgs/DisplayTrajectory.h>

// #include <moveit_msgs/AttachedCollisionObject.h>
// #include <moveit_msgs/CollisionObject.h>

// #include <moveit_visual_tools/moveit_visual_tools.h>

// #include <moveit/robot_model_loader/robot_model_loader.h>
// #include <moveit/robot_model/robot_model.h>
// #include <moveit/robot_state/robot_state.h>



int main(int argc,char** argv)
{
    ros::init(argc, argv, "move_gp7");
    ros::NodeHandle nh;
    ros::AsyncSpinner spinner(1);
    spinner.start();

    static const std::string PLANNING_GROUP = argv[1];
    moveit::planning_interface::MoveGroupInterface robot_group(PLANNING_GROUP);

    std::string tar_pose_name = argv[2];

    // get planning time(default is 5.0s)
    float setPlanningTime = atof(argv[3]);

    //get maxiumum speed of each joint.
    float MaxVelocityScalingFactor = atof(argv[4]);

    geometry_msgs::PoseStamped end_pose_now;

    while(ros::ok())
    {
           //set robot to the pre-set pose 
           robot_group.setNamedTarget(tar_pose_name);

           ROS_INFO("Getting the pose of the end-effector..............");

           //move robot
           robot_group.move();

           // set planning time(default is 5.0s)
           robot_group.setPlanningTime(setPlanningTime);

           //set maxiumum speed of each joint.
           robot_group.setMaxVelocityScalingFactor(MaxVelocityScalingFactor);

           //get pose of end_effector
           end_pose_now = robot_group.getCurrentPose();
           geometry_msgs::Pose target_pose = end_pose_now.pose;
           // set end_effector.position.x+=0.02
           target_pose.position.x += 0.2;
           bool successflg;
           moveit::planning_interface::MoveItErrorCode issuccess;
           do
           {
                if(!robot_group.setPoseTarget(target_pose))
                {
                    successflg = false;
                    break;
                }
                //move robot
                issuccess = robot_group.move();
                if (issuccess == moveit_msgs::MoveItErrorCodes::SUCCESS ) successflg = true;
                else successflg = false;
           }
           while (0);
           if(successflg) ROS_INFO("Setting the pose of the end-effector success..............");
           else ROS_INFO("Failed to set the pose of the end-effector..............");
    }

    return 0;
}
