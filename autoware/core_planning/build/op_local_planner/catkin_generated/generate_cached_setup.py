# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/melodic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/melodic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/kimna/Desktop/autoware.ai/install/ymc;/home/kimna/Desktop/autoware.ai/install/xsens_driver;/home/kimna/Desktop/autoware.ai/install/wf_simulator;/home/kimna/Desktop/autoware.ai/install/lattice_planner;/home/kimna/Desktop/autoware.ai/install/waypoint_planner;/home/kimna/Desktop/autoware.ai/install/waypoint_maker;/home/kimna/Desktop/autoware.ai/install/way_planner;/home/kimna/Desktop/autoware.ai/install/vlg22c_cam;/home/kimna/Desktop/autoware.ai/install/vision_ssd_detect;/home/kimna/Desktop/autoware.ai/install/vision_segment_enet_detect;/home/kimna/Desktop/autoware.ai/install/vision_lane_detect;/home/kimna/Desktop/autoware.ai/install/vision_darknet_detect;/home/kimna/Desktop/autoware.ai/install/vision_beyond_track;/home/kimna/Desktop/autoware.ai/install/vel_pose_diff_checker;/home/kimna/Desktop/autoware.ai/install/vehicle_socket;/home/kimna/Desktop/autoware.ai/install/vehicle_sim_model;/home/kimna/Desktop/autoware.ai/install/vehicle_model;/home/kimna/Desktop/autoware.ai/install/vehicle_gazebo_simulation_launcher;/home/kimna/Desktop/autoware.ai/install/vehicle_gazebo_simulation_interface;/home/kimna/Desktop/autoware.ai/install/vehicle_engage_panel;/home/kimna/Desktop/autoware.ai/install/vehicle_description;/home/kimna/Desktop/autoware.ai/install/op_utilities;/home/kimna/Desktop/autoware.ai/install/op_simulation_package;/home/kimna/Desktop/autoware.ai/install/op_local_planner;/home/kimna/Desktop/autoware.ai/install/op_global_planner;/home/kimna/Desktop/autoware.ai/install/lidar_kf_contour_track;/home/kimna/Desktop/autoware.ai/install/op_ros_helpers;/home/kimna/Desktop/autoware.ai/install/ff_waypoint_follower;/home/kimna/Desktop/autoware.ai/install/dp_planner;/home/kimna/Desktop/autoware.ai/install/op_simu;/home/kimna/Desktop/autoware.ai/install/op_planner;/home/kimna/Desktop/autoware.ai/install/op_utility;/home/kimna/Desktop/autoware.ai/install/lidar_euclidean_cluster_detect;/home/kimna/Desktop/autoware.ai/install/vector_map_server;/home/kimna/Desktop/autoware.ai/install/road_occupancy_processor;/home/kimna/Desktop/autoware.ai/install/costmap_generator;/home/kimna/Desktop/autoware.ai/install/object_map;/home/kimna/Desktop/autoware.ai/install/naive_motion_predict;/home/kimna/Desktop/autoware.ai/install/lanelet_aisan_converter;/home/kimna/Desktop/autoware.ai/install/map_file;/home/kimna/Desktop/autoware.ai/install/libvectormap;/home/kimna/Desktop/autoware.ai/install/lane_planner;/home/kimna/Desktop/autoware.ai/install/imm_ukf_pda_track;/home/kimna/Desktop/autoware.ai/install/decision_maker;/home/kimna/Desktop/autoware.ai/install/vector_map;/home/kimna/Desktop/autoware.ai/install/vector_map_msgs;/home/kimna/Desktop/autoware.ai/install/vectacam;/home/kimna/Desktop/autoware.ai/install/udon_socket;/home/kimna/Desktop/autoware.ai/install/twist_generator;/home/kimna/Desktop/autoware.ai/install/twist_gate;/home/kimna/Desktop/autoware.ai/install/twist_filter;/home/kimna/Desktop/autoware.ai/install/twist2odom;/home/kimna/Desktop/autoware.ai/install/tablet_socket;/home/kimna/Desktop/autoware.ai/install/runtime_manager;/home/kimna/Desktop/autoware.ai/install/mqtt_socket;/home/kimna/Desktop/autoware.ai/install/tablet_socket_msgs;/home/kimna/Desktop/autoware.ai/install/state_machine_lib;/home/kimna/Desktop/autoware.ai/install/sound_player;/home/kimna/Desktop/autoware.ai/install/sick_lms5xx;/home/kimna/Desktop/autoware.ai/install/sick_ldmrs_tools;/home/kimna/Desktop/autoware.ai/install/sick_ldmrs_driver;/home/kimna/Desktop/autoware.ai/install/sick_ldmrs_msgs;/home/kimna/Desktop/autoware.ai/install/sick_ldmrs_description;/home/kimna/Desktop/autoware.ai/install/points2image;/home/kimna/Desktop/autoware.ai/install/rosinterface;/home/kimna/Desktop/autoware.ai/install/rosbag_controller;/home/kimna/Desktop/autoware.ai/install/pure_pursuit;/home/kimna/Desktop/autoware.ai/install/points_preprocessor;/home/kimna/Desktop/autoware.ai/install/mpc_follower;/home/kimna/Desktop/autoware.ai/install/lidar_localizer;/home/kimna/Desktop/autoware.ai/install/emergency_handler;/home/kimna/Desktop/autoware.ai/install/autoware_health_checker;/home/kimna/Desktop/autoware.ai/install/as;/home/kimna/Desktop/autoware.ai/install/ros_observer;/home/kimna/Desktop/autoware.ai/install/roi_object_filter;/home/kimna/Desktop/autoware.ai/install/range_vision_fusion;/home/kimna/Desktop/autoware.ai/install/pos_db;/home/kimna/Desktop/autoware.ai/install/points_downsampler;/home/kimna/Desktop/autoware.ai/install/pixel_cloud_fusion;/home/kimna/Desktop/autoware.ai/install/pcl_omp_registration;/home/kimna/Desktop/autoware.ai/install/pc2_downsampler;/home/kimna/Desktop/autoware.ai/install/oculus_socket;/home/kimna/Desktop/autoware.ai/install/obj_db;/home/kimna/Desktop/autoware.ai/install/nmea_navsat;/home/kimna/Desktop/autoware.ai/install/ndt_tku;/home/kimna/Desktop/autoware.ai/install/ndt_gpu;/home/kimna/Desktop/autoware.ai/install/ndt_cpu;/home/kimna/Desktop/autoware.ai/install/multi_lidar_calibrator;/home/kimna/Desktop/autoware.ai/install/mrt_cmake_modules;/home/kimna/Desktop/autoware.ai/install/microstrain_driver;/home/kimna/Desktop/autoware.ai/install/memsic_imu;/home/kimna/Desktop/autoware.ai/install/marker_downsampler;/home/kimna/Desktop/autoware.ai/install/map_tools;/home/kimna/Desktop/autoware.ai/install/map_tf_generator;/home/kimna/Desktop/autoware.ai/install/log_tools;/home/kimna/Desktop/autoware.ai/install/lidar_shape_estimation;/home/kimna/Desktop/autoware.ai/install/lidar_point_pillars;/home/kimna/Desktop/autoware.ai/install/lidar_naive_l_shape_detect;/home/kimna/Desktop/autoware.ai/install/lidar_fake_perception;/home/kimna/Desktop/autoware.ai/install/lidar_apollo_cnn_seg_detect;/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower;/home/kimna/Desktop/autoware.ai/install/lgsvl_simulator_bridge;/home/kimna/Desktop/autoware.ai/install/lanelet2_extension;/home/kimna/Desktop/autoware.ai/install/lanelet2_validation;/home/kimna/Desktop/autoware.ai/install/lanelet2_examples;/home/kimna/Desktop/autoware.ai/install/lanelet2_python;/home/kimna/Desktop/autoware.ai/install/lanelet2_routing;/home/kimna/Desktop/autoware.ai/install/lanelet2_traffic_rules;/home/kimna/Desktop/autoware.ai/install/lanelet2_projection;/home/kimna/Desktop/autoware.ai/install/lanelet2_maps;/home/kimna/Desktop/autoware.ai/install/lanelet2_io;/home/kimna/Desktop/autoware.ai/install/lanelet2_core;/home/kimna/Desktop/autoware.ai/install/kvaser;/home/kimna/Desktop/autoware.ai/install/kitti_launch;/home/kimna/Desktop/autoware.ai/install/kitti_player;/home/kimna/Desktop/autoware.ai/install/kitti_box_publisher;/home/kimna/Desktop/autoware.ai/install/javad_navsat_driver;/home/kimna/Desktop/autoware.ai/install/integrated_viewer;/home/kimna/Desktop/autoware.ai/install/image_processor;/home/kimna/Desktop/autoware.ai/install/hokuyo;/home/kimna/Desktop/autoware.ai/install/graph_tools;/home/kimna/Desktop/autoware.ai/install/gnss_localizer;/home/kimna/Desktop/autoware.ai/install/gnss;/home/kimna/Desktop/autoware.ai/install/glviewer;/home/kimna/Desktop/autoware.ai/install/gazebo_world_description;/home/kimna/Desktop/autoware.ai/install/gazebo_imu_description;/home/kimna/Desktop/autoware.ai/install/gazebo_camera_description;/home/kimna/Desktop/autoware.ai/install/garmin;/home/kimna/Desktop/autoware.ai/install/freespace_planner;/home/kimna/Desktop/autoware.ai/install/fastvirtualscan;/home/kimna/Desktop/autoware.ai/install/ekf_localizer;/home/kimna/Desktop/autoware.ai/install/ds4_msgs;/home/kimna/Desktop/autoware.ai/install/ds4_driver;/home/kimna/Desktop/autoware.ai/install/detected_objects_visualizer;/home/kimna/Desktop/autoware.ai/install/decision_maker_panel;/home/kimna/Desktop/autoware.ai/install/data_preprocessor;/home/kimna/Desktop/autoware.ai/install/custom_msgs;/home/kimna/Desktop/autoware.ai/install/carla_autoware_bridge;/home/kimna/Desktop/autoware.ai/install/calibration_publisher;/home/kimna/Desktop/autoware.ai/install/autoware_system_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_rviz_plugins;/home/kimna/Desktop/autoware.ai/install/autoware_quickstart_examples;/home/kimna/Desktop/autoware.ai/install/autoware_pointgrey_drivers;/home/kimna/Desktop/autoware.ai/install/autoware_driveworks_interface;/home/kimna/Desktop/autoware.ai/install/autoware_connector;/home/kimna/Desktop/autoware.ai/install/autoware_camera_lidar_calibrator;/home/kimna/Desktop/autoware.ai/install/astar_search;/home/kimna/Desktop/autoware.ai/install/amathutils_lib;/home/kimna/Desktop/autoware.ai/install/autoware_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_map_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_launcher_rviz;/home/kimna/Desktop/autoware.ai/install/autoware_launcher;/home/kimna/Desktop/autoware.ai/install/autoware_lanelet2_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_external_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_driveworks_gmsl_interface;/home/kimna/Desktop/autoware.ai/install/autoware_config_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_can_msgs;/home/kimna/Desktop/autoware.ai/install/autoware_build_flags;/home/kimna/Desktop/autoware.ai/install/autoware_bag_tools;/home/kimna/Desktop/autoware.ai/install/adi_driver;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_local_planner/devel/env.sh')

output_filename = '/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_local_planner/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
