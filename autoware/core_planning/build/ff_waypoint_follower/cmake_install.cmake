# Install script for directory: /home/kimna/Desktop/autoware.ai/src/autoware/core_planning/ff_waypoint_follower

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/ff_waypoint_follower")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/ff_waypoint_follower/catkin_generated/installspace/ff_waypoint_follower.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ff_waypoint_follower/cmake" TYPE FILE FILES
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/ff_waypoint_follower/catkin_generated/installspace/ff_waypoint_followerConfig.cmake"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/ff_waypoint_follower/catkin_generated/installspace/ff_waypoint_followerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ff_waypoint_follower" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/ff_waypoint_follower/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/ff_waypoint_follower/devel/lib/ff_waypoint_follower/ff_waypoint_follower")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/ff_waypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/home/kimna/Desktop/autoware.ai/install/map_file/lib:/opt/ros/melodic/lib:/home/kimna/Desktop/autoware.ai/install/op_simu/lib:/home/kimna/Desktop/autoware.ai/install/op_planner/lib:/home/kimna/Desktop/autoware.ai/install/op_utility/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ff_waypoint_follower/ff_waypoint_follower")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ff_waypoint_follower/launch" TYPE DIRECTORY FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/ff_waypoint_follower/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ff_waypoint_follower/params" TYPE DIRECTORY FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/ff_waypoint_follower/params/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/ff_waypoint_follower/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/ff_waypoint_follower/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
