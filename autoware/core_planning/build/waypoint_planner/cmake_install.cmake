# Install script for directory: /home/kimna/Desktop/autoware.ai/src/autoware/core_planning/waypoint_planner

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/waypoint_planner")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/catkin_generated/installspace/waypoint_planner.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/waypoint_planner/cmake" TYPE FILE FILES
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/catkin_generated/installspace/waypoint_plannerConfig.cmake"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/catkin_generated/installspace/waypoint_plannerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/waypoint_planner" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/waypoint_planner/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/devel/lib/waypoint_planner/astar_avoid")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/astar_search/lib:/home/kimna/Desktop/autoware.ai/install/autoware_health_checker/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_extension/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_validation/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_routing/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_projection/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_io/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_traffic_rules/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_core/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/astar_avoid")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/devel/lib/waypoint_planner/velocity_set")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/astar_search/lib:/home/kimna/Desktop/autoware.ai/install/autoware_health_checker/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_extension/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_validation/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_routing/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_projection/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_io/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_traffic_rules/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_core/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/devel/lib/waypoint_planner/velocity_set_lanelet2")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/astar_search/lib:/home/kimna/Desktop/autoware.ai/install/autoware_health_checker/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_extension/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_validation/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_routing/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_projection/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_io/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_traffic_rules/lib:/home/kimna/Desktop/autoware.ai/install/lanelet2_core/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/waypoint_planner/velocity_set_lanelet2")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/waypoint_planner/launch" TYPE DIRECTORY FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/waypoint_planner/launch/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/waypoint_planner/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
