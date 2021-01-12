# Install script for directory: /media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/carmaker_vds_client

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/build/carmaker_vds_client/catkin_generated/installspace/carmaker_vds_client.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carmaker_vds_client/cmake" TYPE FILE FILES
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/build/carmaker_vds_client/catkin_generated/installspace/carmaker_vds_clientConfig.cmake"
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/build/carmaker_vds_client/catkin_generated/installspace/carmaker_vds_clientConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carmaker_vds_client" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/carmaker_vds_client/package.xml")
endif()

