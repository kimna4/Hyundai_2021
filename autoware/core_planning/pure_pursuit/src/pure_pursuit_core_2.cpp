/*
 * Copyright 2015-2019 Autoware Foundation. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <vector>
#include <pure_pursuit/pure_pursuit_core.h>
#include <pure_pursuit/stanley.h>

#include <cmath>

namespace waypoint_follower
{
// Constructor
PurePursuitNode::PurePursuitNode()
  : private_nh_("~")
  , pp_()
  , LOOP_RATE_(30)
  , is_waypoint_set_(false)
  , is_pose_set_(false)
  , is_velocity_set_(false)
  , current_linear_velocity_(0)
  , command_linear_velocity_(0)
  , direction_(LaneDirection::Forward)
  , velocity_source_(-1)
  , const_lookahead_distance_(4.0)
  , const_velocity_(5.0)
  , lookahead_distance_ratio_(2.0)
  , minimum_lookahead_distance_(6.0)
  , stanley_factor_(0.0)
{
  initForROS();
  health_checker_ptr_ =
    std::make_shared<autoware_health_checker::HealthChecker>(nh_, private_nh_);
  health_checker_ptr_->ENABLE();
  // initialize for PurePursuit
  pp_.setLinearInterpolationParameter(is_linear_interpolation_);
}

// Destructor
PurePursuitNode::~PurePursuitNode()
{
}

void PurePursuitNode::initForROS()
{
  // ros parameter settings
  private_nh_.param("velocity_source", velocity_source_, 0);
  private_nh_.param("is_linear_interpolation", is_linear_interpolation_, true);
  private_nh_.param(
    "publishes_for_steering_robot", publishes_for_steering_robot_, false);
  private_nh_.param(
    "add_virtual_end_waypoints", add_virtual_end_waypoints_, false);
  private_nh_.param("const_lookahead_distance", const_lookahead_distance_, 4.0);
  private_nh_.param("const_velocity", const_velocity_, 5.0);
  private_nh_.param("lookahead_ratio", lookahead_distance_ratio_, 2.0);
  private_nh_.param(
    "minimum_lookahead_distance", minimum_lookahead_distance_, 6.0);
  nh_.param("vehicle_info/wheel_base", wheel_base_, 2.7);

  private_nh_.param(
    "stanley_factor", stanley_factor_, 0.0);

  // setup subscriber
  sub1_ = nh_.subscribe("final_waypoints", 10,
    &PurePursuitNode::callbackFromWayPoints, this);
  sub2_ = nh_.subscribe("current_pose", 10,
    &PurePursuitNode::callbackFromCurrentPose, this);
  sub3_ = nh_.subscribe("config/waypoint_follower", 10,
    &PurePursuitNode::callbackFromConfig, this);
  sub4_ = nh_.subscribe("current_velocity", 10,
    &PurePursuitNode::callbackFromCurrentVelocity, this);

  // setup publisher
  pub1_ = nh_.advertise<geometry_msgs::TwistStamped>("twist_raw", 10);
  pub2_ = nh_.advertise<autoware_msgs::ControlCommandStamped>("ctrl_raw", 10);
  pub11_ = nh_.advertise<visualization_msgs::Marker>("next_waypoint_mark", 0);
  pub12_ = nh_.advertise<visualization_msgs::Marker>("next_target_mark", 0);
  pub13_ = nh_.advertise<visualization_msgs::Marker>("search_circle_mark", 0);
  // debug tool
  pub14_ = nh_.advertise<visualization_msgs::Marker>("line_point_mark", 0);
  pub15_ =
    nh_.advertise<visualization_msgs::Marker>("trajectory_circle_mark", 0);
  pub16_ = nh_.advertise<std_msgs::Float32>("angular_gravity", 0);
  pub17_ = nh_.advertise<std_msgs::Float32>("deviation_of_current_position", 0);
  pub18_ =
    nh_.advertise<visualization_msgs::Marker>("expanded_waypoints_mark", 0);
  // pub7_ = nh.advertise<std_msgs::Bool>("wf_stat", 0);
}

void PurePursuitNode::run()
{
  ROS_INFO_STREAM("pure pursuit start");
  ros::Rate loop_rate(LOOP_RATE_);
  Stanley stanley;
  int closest_index    = 0;
  float closest_distance = 0;

  while (ros::ok())
  {
    ros::spinOnce();
    if (!is_pose_set_ || !is_waypoint_set_ || !is_velocity_set_)
    {
      //ROS_WARN("Necessary topics are not subscribed yet ... ");
      loop_rate.sleep();
      continue;
    }

    pp_.setLookaheadDistance(computeLookaheadDistance());
    pp_.setMinimumLookaheadDistance(minimum_lookahead_distance_);

    double kappa = 0;

    bool can_get_curvature = pp_.canGetCurvature(&kappa);
    //ROS_WARN_STREAM("kappa : "<< kappa << std::endl);  
    //int current_number = pp_.getNextWaypointNumber();
/*
    int current_number = 0;
    float cur_x = pp_.getCurrentPose().position.x;
    float cur_y = pp_.getCurrentPose().position.y;
    float way_x = pp_.getCurrentWaypoints().at(current_number).pose.pose.position.x;
    float way_y = pp_.getCurrentWaypoints().at(current_number).pose.pose.position.y;
    float nway_x = pp_.getCurrentWaypoints().at(current_number+1).pose.pose.position.x;
    float nway_y = pp_.getCurrentWaypoints().at(current_number+1).pose.pose.position.y;

    float vec1_x = cur_x - way_x;
    float vec1_y = cur_y - way_y;
    float vec2_x = nway_x - way_x;
    float vec2_y = nway_y - way_y;
    int direction = 0;

    float is_left = (vec1_x * vec2_y) - (vec1_y * vec2_x);


    if(is_left < 0.01) {
      is_left = 0;
    }
    else {
      direction = is_left > 0 ? -1 : 1;
    }

    direction = is_left > 0 ? 1 : -1;

    float distance = sqrt((cur_x - way_x) * (cur_x - way_x) + (cur_y - way_y) * (cur_y - way_y));
    float direction_tune = (direction * distance* pow(pp_.getCurrentVelocity() * 3.6, 2) * 0.0004);
*/    
    //ROS_WARN_STREAM("is_left   : "<<is_left << std::endl);
    //ROS_WARN_STREAM("direction : "<<direction << std::endl);
    //ROS_WARN_STREAM("tune      : "<<direction_tune << std::endl);
    //ROS_WARN_STREAM("cur      : "<< cur_x << ", " << cur_y << std::endl);
    //ROS_WARN_STREAM("way      : "<< way_x << ", " << way_y << std::endl);
    
/*
    if(fabs(direction_tune) < 0.03) {
      direction_tune = 0 * direction;
    }
*/
    /*else if(fabs(direction_tune) > 0.05) {
      direction_tune = 0.05 * direction;
    }*/

    //ROS_WARN_STREAM("tune : "<< direction_tune << std::endl);

    //kappa += direction_tune;

    float cur_x = pp_.getCurrentPose().position.x;
    float cur_y = pp_.getCurrentPose().position.y;
    float way_x = pp_.getCurrentWaypoints().at(0).pose.pose.position.x;
    float way_y = pp_.getCurrentWaypoints().at(0).pose.pose.position.y;
    //float target_x = pp_.getPoseOfNextWaypoint().x;
    //float target_y = pp_.getPoseOfNextWaypoint().y;

    //float cur_way_vec_x = way_x - cur_x;
    //float cur_way_vec_y = way_y - cur_y;
    //float cur_way_distance = sqrt(pow(cur_way_vec_x,2) + pow(cur_way_vec_y,2));

    //float cur_target_vec_x = target_x - cur_x;
    //float cur_target_vec_y = target_y - cur_y;
    //float cur_target_distance = sqrt(pow(cur_target_vec_x,2) + pow(cur_target_vec_y,2));

    //double cur_target_angle = asin((cur_way_vec_x * cur_target_vec_y - cur_way_vec_y * cur_target_vec_x) / (cur_way_distance * cur_target_distance));
    //cur_target_angle = cur_target_angle * 180 / M_PI;


    float nway_x = pp_.getCurrentWaypoints().at(1).pose.pose.position.x;
    float nway_y = pp_.getCurrentWaypoints().at(1).pose.pose.position.y;

    float vec1_x = cur_x - way_x;
    float vec1_y = cur_y - way_y;
    float vec2_x = nway_x - way_x;
    float vec2_y = nway_y - way_y;
    int direction = 0;

    float is_left = (vec1_x * vec2_y) - (vec1_y * vec2_x);
    direction = is_left > 0 ? -1 : 1;

    geometry_msgs::Quaternion cur_q = pp_.getCurrentPose().orientation;
    
    //ROS_WARN_STREAM("Angle : "<< cur_target_angle << std::endl);
    //ROS_WARN_STREAM("cur_x : "<< cur_x << std::endl);
    //ROS_WARN_STREAM("cur_y : "<< cur_y << std::endl);
    //ROS_WARN_STREAM("cur_yaw : "<< cur_yaw << std::endl);
    //ROS_WARN_STREAM("v : "<< pp_.getCurrentVelocity() << std::endl);
//    if(fabs(cur_target_angle) > 1) {
    if(std::isnan(cur_x) == 0 && std::isnan(cur_y) == 0) {
      double siny_cosp = 2 * (cur_q.w * cur_q.z + cur_q.x * cur_q.y);
      double cosy_cosp = 1 - 2 * (cur_q.y * cur_q.y + cur_q.z * cur_q.z);

/*
      closest_distance = sqrt(pow(cur_x - pp_.getCurrentWaypoints().at(closest_index).pose.pose.position.x,2) + pow(cur_y - pp_.getCurrentWaypoints().at(closest_index).pose.pose.position.y,2));

      float new_distance = closest_distance;
      int new_index = closest_index;
      while(new_distance <= closest_distance){
          closest_distance = new_distance;
          closest_index = new_index;
          new_index += 1;
          if(new_index >= pp_.getCurrentWaypoints().size()){
             break;
          }
          new_distance = sqrt(pow(cur_x - pp_.getCurrentWaypoints().at(new_index).pose.pose.position.x,2) + pow(cur_y - pp_.getCurrentWaypoints().at(new_index).pose.pose.position.y,2));
      }
      new_distance = closest_distance;
      new_index = closest_index;
      while(new_distance <= closest_distance){
          closest_distance = new_distance;
          closest_index = new_index;
          new_index -= 1;
          if(new_index < 0) {
              break;
          }
          new_distance = sqrt(pow(cur_x - pp_.getCurrentWaypoints().at(new_index).pose.pose.position.x,2) + pow(cur_y - pp_.getCurrentWaypoints().at(new_index).pose.pose.position.y,2));
      }*/
      float distance = sqrt((cur_x - way_x) * (cur_x - way_x) + (cur_y - way_y) * (cur_y - way_y));
      //float distance = new_distance;

      double cur_yaw = std::atan2(siny_cosp, cosy_cosp);   
      //ROS_WARN_STREAM("cur_yaw : "<< cur_yaw << std::endl); 
      
      double steering = stanley.calculate_steering(cur_x, cur_y, cur_yaw, pp_.getCurrentWaypoints(), pp_.getCurrentVelocity(), distance, direction);


      if(isnan(steering) == 0) {
        kappa = tan(steering * stanley_factor_ + atan(wheel_base_ * kappa) * (1.0 - stanley_factor_)) / wheel_base_;
      }
    }
    else {
      pp_.getPoseOfNextTarget() = pp_.getCurrentWaypoints().at(pp_.getNextWaypointNumber()).pose.pose.position;
    }

    //ROS_WARN_STREAM("kappa : "<< pp_.getCurrentVelocity() << std::endl);


    publishTwistStamped(can_get_curvature, kappa);
    publishControlCommandStamped(can_get_curvature, kappa);
    health_checker_ptr_->NODE_ACTIVATE();
    health_checker_ptr_->CHECK_RATE("topic_rate_vehicle_cmd_slow", 8, 5, 1,
      "topic vehicle_cmd publish rate slow.");
    // for visualization with Rviz
    pub11_.publish(displayNextWaypoint(pp_.getPoseOfNextWaypoint()));
    pub13_.publish(displaySearchRadius(
      pp_.getCurrentPose().position, pp_.getLookaheadDistance()));
    pub12_.publish(displayNextTarget(pp_.getPoseOfNextTarget()));
    pub15_.publish(displayTrajectoryCircle(
        waypoint_follower::generateTrajectoryCircle(
          pp_.getPoseOfNextTarget(), pp_.getCurrentPose())));
    if (add_virtual_end_waypoints_)
    {
      pub18_.publish(
        displayExpandWaypoints(pp_.getCurrentWaypoints(), expand_size_));
    }
    std_msgs::Float32 angular_gravity_msg;
    angular_gravity_msg.data =
      computeAngularGravity(computeCommandVelocity(), kappa);

    //int current_number = pp_.getNextWaypointNumber();

    
    //ROS_WARN_STREAM("WAY POS1 : " << pp_.getCurrentWaypoints().at(current_number).pose.pose.position.x << std::endl);
    //ROS_WARN_STREAM("WAY POS2 : " << pp_.getCurrentWaypoints().at(current_number+1).pose.pose.position.x << std::endl);
/*    
    ROS_WARN_STREAM(is_left);
    if(is_left > 0) {
      ROS_WARN_STREAM("LEFT");
    }
    else {
      ROS_WARN_STREAM("RIGHT");
    }
*/
    pub16_.publish(angular_gravity_msg);
    publishDeviationCurrentPosition(
      pp_.getCurrentPose().position, pp_.getCurrentWaypoints());

    is_pose_set_ = false;
    is_velocity_set_ = false;
    is_waypoint_set_ = false;

    loop_rate.sleep();
  }
}

void PurePursuitNode::publishTwistStamped(
  const bool& can_get_curvature, const double& kappa) const
{
  geometry_msgs::TwistStamped ts;
  ts.header.stamp = ros::Time::now();
  ts.twist.linear.x = can_get_curvature ? computeCommandVelocity() : 0;
  ts.twist.angular.z = can_get_curvature ? kappa * ts.twist.linear.x : 0;
  pub1_.publish(ts);
}

void PurePursuitNode::publishControlCommandStamped(
  const bool& can_get_curvature, const double& kappa) const
{
  if (!publishes_for_steering_robot_)
  {
    return;
  }

  autoware_msgs::ControlCommandStamped ccs;
  ccs.header.stamp = ros::Time::now();
  ccs.cmd.linear_velocity = can_get_curvature ? computeCommandVelocity() : 0;
  ccs.cmd.linear_acceleration = can_get_curvature ? computeCommandAccel() : 0;
  ccs.cmd.steering_angle =
    can_get_curvature ? convertCurvatureToSteeringAngle(wheel_base_, kappa) : 0;

  pub2_.publish(ccs);
}

double PurePursuitNode::computeLookaheadDistance() const
{
/*
  if (velocity_source_ == enumToInteger(Mode::dialog))
  {
    return const_lookahead_distance_;
  }
*/

  double maximum_lookahead_distance = current_linear_velocity_ * 10;
  double ld = current_linear_velocity_ * lookahead_distance_ratio_;

  return ld < minimum_lookahead_distance_ ? minimum_lookahead_distance_ :
    ld > maximum_lookahead_distance ? maximum_lookahead_distance : ld;
}

int PurePursuitNode::getSgn() const
{
  int sgn = 0;
  if (direction_ == LaneDirection::Forward)
  {
    sgn = 1;
  }
  else if (direction_ == LaneDirection::Backward)
  {
    sgn = -1;
  }
  return sgn;
}

double PurePursuitNode::computeCommandVelocity() const
{
  if (velocity_source_ == enumToInteger(Mode::dialog))
  {
    return getSgn() * kmph2mps(const_velocity_);
  }

  return command_linear_velocity_;
}

double PurePursuitNode::computeCommandAccel() const
{
  const geometry_msgs::Pose current_pose = pp_.getCurrentPose();
  const geometry_msgs::Pose target_pose =
    pp_.getCurrentWaypoints().at(1).pose.pose;

  // v^2 - v0^2 = 2ax
  const double x =
      std::hypot(current_pose.position.x - target_pose.position.x, current_pose.position.y - target_pose.position.y);
  const double v0 = current_linear_velocity_;
  const double v = computeCommandVelocity();
  const double a = getSgn() * (v * v - v0 * v0) / (2 * x);
  return a;
}

      
double PurePursuitNode::computeAngularGravity(
  double velocity, double kappa) const
{
  const double gravity = 9.80665;
  return (velocity * velocity) / (1.0 / kappa * gravity);
}

void PurePursuitNode::callbackFromConfig(
  const autoware_config_msgs::ConfigWaypointFollowerConstPtr& config)
{
  velocity_source_ = config->param_flag;
  const_lookahead_distance_ = config->lookahead_distance;
  const_velocity_ = config->velocity;
  lookahead_distance_ratio_ = config->lookahead_ratio;
  minimum_lookahead_distance_ = config->minimum_lookahead_distance;
  stanley_factor_ = config->stanley_factor;
}

void PurePursuitNode::publishDeviationCurrentPosition(
  const geometry_msgs::Point& point,
  const std::vector<autoware_msgs::Waypoint>& waypoints) const
{
  // Calculate the deviation of current position
  // from the waypoint approximate line

  if (waypoints.size() < 3)
  {
    return;
  }

  double a, b, c;
  getLinearEquation(
    waypoints.at(2).pose.pose.position, waypoints.at(1).pose.pose.position,
    &a, &b, &c);

  std_msgs::Float32 msg;
  msg.data = getDistanceBetweenLineAndPoint(point, a, b, c);

  pub17_.publish(msg);
}

void PurePursuitNode::callbackFromCurrentPose(
  const geometry_msgs::PoseStampedConstPtr& msg)
{
  pp_.setCurrentPose(msg);
  is_pose_set_ = true;
}

void PurePursuitNode::callbackFromCurrentVelocity(
  const geometry_msgs::TwistStampedConstPtr& msg)
{
  current_linear_velocity_ = msg->twist.linear.x;
  pp_.setCurrentVelocity(current_linear_velocity_);
  is_velocity_set_ = true;
}

void PurePursuitNode::callbackFromWayPoints(
  const autoware_msgs::LaneConstPtr& msg)
{
  command_linear_velocity_ =
    (!msg->waypoints.empty()) ? msg->waypoints.at(0).twist.twist.linear.x : 0;
  if (add_virtual_end_waypoints_)
  {
    const LaneDirection solved_dir = getLaneDirection(*msg);
    direction_ = (solved_dir != LaneDirection::Error) ? solved_dir : direction_;
    autoware_msgs::Lane expanded_lane(*msg);
    expand_size_ = -expanded_lane.waypoints.size();
    connectVirtualLastWaypoints(&expanded_lane, direction_);
    expand_size_ += expanded_lane.waypoints.size();

    pp_.setCurrentWaypoints(expanded_lane.waypoints);
  }
  else
  {
    pp_.setCurrentWaypoints(msg->waypoints);
  }
  is_waypoint_set_ = true;
}

void PurePursuitNode::connectVirtualLastWaypoints(
  autoware_msgs::Lane* lane, LaneDirection direction)
{
  if (lane->waypoints.empty())
  {
    return;
  }
  static double interval = 1.0;
  const geometry_msgs::Pose& pn = lane->waypoints.back().pose.pose;
  autoware_msgs::Waypoint virtual_last_waypoint;
  virtual_last_waypoint.pose.pose.orientation = pn.orientation;
  virtual_last_waypoint.twist.twist.linear.x = 0.0;
  geometry_msgs::Point virtual_last_point_rlt;
  const int sgn = getSgn();
  for (double dist = minimum_lookahead_distance_; dist > 0.0; dist -= interval)
  {
    virtual_last_point_rlt.x += interval * sgn;
    virtual_last_waypoint.pose.pose.position =
      calcAbsoluteCoordinate(virtual_last_point_rlt, pn);
    lane->waypoints.emplace_back(virtual_last_waypoint);
  }
}

double convertCurvatureToSteeringAngle(
  const double& wheel_base, const double& kappa)
{
  return atan(wheel_base * kappa);
}

}  // namespace waypoint_follower
