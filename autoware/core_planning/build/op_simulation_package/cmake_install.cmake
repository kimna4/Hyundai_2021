# Install script for directory: /home/kimna/Desktop/autoware.ai/src/autoware/core_planning/op_simulation_package

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/install/op_simulation_package")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/catkin_generated/installspace/op_simulation_package.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op_simulation_package/cmake" TYPE FILE FILES
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/catkin_generated/installspace/op_simulation_packageConfig.cmake"
    "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/catkin_generated/installspace/op_simulation_packageConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op_simulation_package" TYPE FILE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/op_simulation_package/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/devel/lib/op_simulation_package/op_car_simulator")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/op_simulation_package/lib:/home/kimna/Desktop/autoware.ai/install/map_file/lib:/opt/ros/melodic/lib:/home/kimna/Desktop/autoware.ai/install/op_ros_helpers/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/home/kimna/Desktop/autoware.ai/install/op_simu/lib:/home/kimna/Desktop/autoware.ai/install/op_planner/lib:/home/kimna/Desktop/autoware.ai/install/op_utility/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_car_simulator")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/devel/lib/op_simulation_package/op_perception_simulator")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/op_simulation_package/lib:/home/kimna/Desktop/autoware.ai/install/map_file/lib:/opt/ros/melodic/lib:/home/kimna/Desktop/autoware.ai/install/op_ros_helpers/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/home/kimna/Desktop/autoware.ai/install/op_simu/lib:/home/kimna/Desktop/autoware.ai/install/op_planner/lib:/home/kimna/Desktop/autoware.ai/install/op_utility/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_perception_simulator")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package" TYPE EXECUTABLE FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/devel/lib/op_simulation_package/op_signs_simulator")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator"
         OLD_RPATH "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/op_simulation_package/lib:/home/kimna/Desktop/autoware.ai/install/map_file/lib:/opt/ros/melodic/lib:/home/kimna/Desktop/autoware.ai/install/op_ros_helpers/lib:/home/kimna/Desktop/autoware.ai/install/libwaypoint_follower/lib:/home/kimna/Desktop/autoware.ai/install/amathutils_lib/lib:/home/kimna/Desktop/autoware.ai/install/op_simu/lib:/home/kimna/Desktop/autoware.ai/install/op_planner/lib:/home/kimna/Desktop/autoware.ai/install/op_utility/lib:/home/kimna/Desktop/autoware.ai/install/vector_map/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/op_simulation_package/op_signs_simulator")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/op_simulation_package/launch" TYPE DIRECTORY FILES "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/op_simulation_package/launch/")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kimna/Desktop/autoware.ai/src/autoware/core_planning/build/op_simulation_package/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
