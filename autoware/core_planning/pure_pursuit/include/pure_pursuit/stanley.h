// ROS includes
#include <ros/ros.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>

// C++ includes
#include <vector>
#include <cmath>

// User defined includes
#include <autoware_msgs/Lane.h>
#include <libwaypoint_follower/libwaypoint_follower.h>

#include <pure_pursuit/pure_pursuit_core.h>

class Stanley
{
public:
  double _Kcte;
  double _conv_rad_to_steer;
  //double _closest_distance;

  Stanley() 
  {
    _Kcte               = 0.25;
    //_conv_rad_to_steer = 180.0 / 70.0 / M_PI;
    //_closest_distance   = 0;
  }
  ~Stanley() {}



/*
	Controller iteration code block.

	Controller Feedback Variables:
	    x               : Current X position (meters)
	    y               : Current Y position (meters)
	    yaw             : Current yaw pose (radians)
	    v               : Current forward speed (meters per second)
	    t               : Current time (seconds)
	    v_desired       : Current desired speed (meters per second)
		              (Computed as the speed to track at the
		              closest waypoint to the vehicle.)
	    waypoints       : Current waypoints to track
		              (Includes speed to track at each x,y
		              location.)
		              Format: [[x0, y0, v0],
		                       [x1, y1, v1],
		                       ...
		                       [xn, yn, vn]]
		              Example:
		                  waypoints[2][1]:
		                  Returns the 3rd waypoint's y position

		                  waypoints[5]:
		                  Returns [x5, y5, v5] (6th waypoint)

	Controller Output Variables:
	    throttle_output : Throttle output (0 to 1)
	    steer_output    : Steer output (-1.22 rad to 1.22 rad)
	    brake_output    : Brake output (0 to 1)
*/


  double get_heading_error(std::vector<autoware_msgs::Waypoint> waypoints, double current_yaw) 
  {

    double waypoint_delta_x;
    double waypoint_delta_y;

    double waypoint_heading;
    double heading_error_mod;

    waypoint_delta_x = waypoints.at(1).pose.pose.position.x - waypoints.at(0).pose.pose.position.x;
    waypoint_delta_y = waypoints.at(1).pose.pose.position.y - waypoints.at(0).pose.pose.position.y;
    
    waypoint_heading = atan(waypoint_delta_y/waypoint_delta_x);   
    heading_error_mod = fmod((waypoint_heading - current_yaw), M_PI);
    if(heading_error_mod < 0) {
      heading_error_mod += M_PI;
    }
    
    if(heading_error_mod > M_PI/2 && heading_error_mod < M_PI) {
        heading_error_mod -= M_PI;
    }

    return heading_error_mod;
  }

  int get_steering_direction(double* v1, double* v2) {
    double corss_prod = v1[0]*v2[1] - v1[1]*v2[0];

    if(corss_prod >= 0) {
      return -1;
    }
    return 1;
  }

  double get_cte_heading_error(double v, double _closest_distance) {
    double proportional_cte_error;
    double cte_heading_error;
    double cte_heading_error_mod;

    proportional_cte_error = _Kcte * _closest_distance;
    cte_heading_error = atan(proportional_cte_error/v);

    cte_heading_error_mod = fmod(cte_heading_error, M_PI);
    if(cte_heading_error_mod < 0) {
      cte_heading_error_mod += M_PI;
    }

    if(cte_heading_error_mod > M_PI/2 && cte_heading_error_mod < M_PI){
        cte_heading_error_mod -= M_PI;
    }
   
    ROS_WARN_STREAM("cte : "<< cte_heading_error_mod << std::endl);
    return cte_heading_error_mod;
  } 


  double calculate_steering(double x, double y, double yaw, std::vector<autoware_msgs::Waypoint> waypoints, double v, double closest_distance, int direction) {
    double v1[2] = {waypoints.at(0).pose.pose.position.x - x, waypoints.at(0).pose.pose.position.y - y};
    double v2[2] = {cos(yaw), sin(yaw)};

    double heading_error;
    double cte_error;
    double steering;

    heading_error = get_heading_error(waypoints, yaw);
    //cte_error = get_steering_direction(v1, v2) * get_cte_heading_error(v, closest_distance);
    cte_error = direction * get_cte_heading_error(v, closest_distance);
    //ROS_WARN_STREAM("dir : "<< direction << std::endl);
    
    steering = heading_error + cte_error;

    //steering = fmax(fmin(steering, 1.0), -1.0);

    return steering;
  }
};
