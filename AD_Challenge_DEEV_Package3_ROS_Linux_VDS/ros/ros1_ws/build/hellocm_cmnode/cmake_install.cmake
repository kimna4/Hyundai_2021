# Install script for directory: /media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_cmnode

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
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/build/hellocm_cmnode/catkin_generated/installspace/hellocm_cmnode.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hellocm_cmnode/cmake" TYPE FILE FILES
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/build/hellocm_cmnode/catkin_generated/installspace/hellocm_cmnodeConfig.cmake"
    "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/build/hellocm_cmnode/catkin_generated/installspace/hellocm_cmnodeConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hellocm_cmnode" TYPE FILE FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_cmnode/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/devel/lib/libCMNode_ROS1_HelloCM.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so"
         OLD_RPATH "/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libCMNode_ROS1_HelloCM.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/hellocm_cmnode" TYPE DIRECTORY FILES "/media/ssd1/2021_Hyundai/Challenge_Model_wROS/AD_Challenge_DEEV_Package3_ROS_Linux_VDS/ros/ros1_ws/src/hellocm_cmnode/include/hellocm_cmnode/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

