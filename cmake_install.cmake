# Install script for directory: /home/vvicente/ws/CLICPerformance

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vvicente/ws/CLICPerformance/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so.2.4.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so.2.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/home/vvicente/ws/CLICPerformance/install/lib:/cvmfs/sw.hsf.org/spackages6/root/6.26.02/x86_64-centos7-gcc11.2.0-opt/6eyo7/lib:/cvmfs/sw.hsf.org/spackages6/marlin/1.17.1/x86_64-centos7-gcc11.2.0-opt/z3rcf/lib:/cvmfs/sw.hsf.org/spackages6/lcio/2.17/x86_64-centos7-gcc11.2.0-opt/x6tjd/lib64:/cvmfs/sw.hsf.org/spackages6/gear/1.9.1/x86_64-centos7-gcc11.2.0-opt/nyjb6/lib:/cvmfs/sw.hsf.org/spackages6/clhep/2.4.5.1/x86_64-centos7-gcc11.2.0-opt/izf3n/lib:/cvmfs/sw.hsf.org/spackages6/ilcutil/1.6.2/x86_64-centos7-gcc11.2.0-opt/3ldsj/lib:/cvmfs/sw.hsf.org/spackages6/marlintrk/2.9.1/x86_64-centos7-gcc11.2.0-opt/dox47/lib:/cvmfs/sw.hsf.org/spackages6/raida/1.9.0/x86_64-centos7-gcc11.2.0-opt/tap2j/lib:/cvmfs/sw.hsf.org/spackages6/dd4hep/1.21/x86_64-centos7-gcc11.2.0-opt/g26qn/lib:/cvmfs/sw.hsf.org/spackages6/marlinutil/1.16.2/x86_64-centos7-gcc11.2.0-opt/t5hrv/lib:/cvmfs/sw.hsf.org/spackages6/ced/1.9.4/x86_64-centos7-gcc11.2.0-opt/owdkp/lib:/cvmfs/sw.hsf.org/spackages6/gsl/2.7.1/x86_64-centos7-gcc11.2.0-opt/kfh54/lib:/cvmfs/sw.hsf.org/spackages6/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/x7m6r/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES
    "/home/vvicente/ws/CLICPerformance/clicConfig/lib/libClicPerformance.so.2.4.1"
    "/home/vvicente/ws/CLICPerformance/clicConfig/lib/libClicPerformance.so.2.4"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so.2.4.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so.2.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/cvmfs/sw.hsf.org/spackages6/root/6.26.02/x86_64-centos7-gcc11.2.0-opt/6eyo7/lib:/cvmfs/sw.hsf.org/spackages6/marlin/1.17.1/x86_64-centos7-gcc11.2.0-opt/z3rcf/lib:/cvmfs/sw.hsf.org/spackages6/lcio/2.17/x86_64-centos7-gcc11.2.0-opt/x6tjd/lib64:/cvmfs/sw.hsf.org/spackages6/gear/1.9.1/x86_64-centos7-gcc11.2.0-opt/nyjb6/lib:/cvmfs/sw.hsf.org/spackages6/clhep/2.4.5.1/x86_64-centos7-gcc11.2.0-opt/izf3n/lib:/cvmfs/sw.hsf.org/spackages6/ilcutil/1.6.2/x86_64-centos7-gcc11.2.0-opt/3ldsj/lib:/cvmfs/sw.hsf.org/spackages6/marlintrk/2.9.1/x86_64-centos7-gcc11.2.0-opt/dox47/lib:/cvmfs/sw.hsf.org/spackages6/raida/1.9.0/x86_64-centos7-gcc11.2.0-opt/tap2j/lib:/cvmfs/sw.hsf.org/spackages6/dd4hep/1.21/x86_64-centos7-gcc11.2.0-opt/g26qn/lib:/cvmfs/sw.hsf.org/spackages6/marlinutil/1.16.2/x86_64-centos7-gcc11.2.0-opt/t5hrv/lib:/cvmfs/sw.hsf.org/spackages6/ced/1.9.4/x86_64-centos7-gcc11.2.0-opt/owdkp/lib:/cvmfs/sw.hsf.org/spackages6/gsl/2.7.1/x86_64-centos7-gcc11.2.0-opt/kfh54/lib:/cvmfs/sw.hsf.org/spackages6/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/x7m6r/lib::::::::::::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "/home/vvicente/ws/CLICPerformance/install/lib:/cvmfs/sw.hsf.org/spackages6/root/6.26.02/x86_64-centos7-gcc11.2.0-opt/6eyo7/lib:/cvmfs/sw.hsf.org/spackages6/marlin/1.17.1/x86_64-centos7-gcc11.2.0-opt/z3rcf/lib:/cvmfs/sw.hsf.org/spackages6/lcio/2.17/x86_64-centos7-gcc11.2.0-opt/x6tjd/lib64:/cvmfs/sw.hsf.org/spackages6/gear/1.9.1/x86_64-centos7-gcc11.2.0-opt/nyjb6/lib:/cvmfs/sw.hsf.org/spackages6/clhep/2.4.5.1/x86_64-centos7-gcc11.2.0-opt/izf3n/lib:/cvmfs/sw.hsf.org/spackages6/ilcutil/1.6.2/x86_64-centos7-gcc11.2.0-opt/3ldsj/lib:/cvmfs/sw.hsf.org/spackages6/marlintrk/2.9.1/x86_64-centos7-gcc11.2.0-opt/dox47/lib:/cvmfs/sw.hsf.org/spackages6/raida/1.9.0/x86_64-centos7-gcc11.2.0-opt/tap2j/lib:/cvmfs/sw.hsf.org/spackages6/dd4hep/1.21/x86_64-centos7-gcc11.2.0-opt/g26qn/lib:/cvmfs/sw.hsf.org/spackages6/marlinutil/1.16.2/x86_64-centos7-gcc11.2.0-opt/t5hrv/lib:/cvmfs/sw.hsf.org/spackages6/ced/1.9.4/x86_64-centos7-gcc11.2.0-opt/owdkp/lib:/cvmfs/sw.hsf.org/spackages6/gsl/2.7.1/x86_64-centos7-gcc11.2.0-opt/kfh54/lib:/cvmfs/sw.hsf.org/spackages6/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/x7m6r/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so"
         RPATH "/home/vvicente/ws/CLICPerformance/install/lib:/cvmfs/sw.hsf.org/spackages6/root/6.26.02/x86_64-centos7-gcc11.2.0-opt/6eyo7/lib:/cvmfs/sw.hsf.org/spackages6/marlin/1.17.1/x86_64-centos7-gcc11.2.0-opt/z3rcf/lib:/cvmfs/sw.hsf.org/spackages6/lcio/2.17/x86_64-centos7-gcc11.2.0-opt/x6tjd/lib64:/cvmfs/sw.hsf.org/spackages6/gear/1.9.1/x86_64-centos7-gcc11.2.0-opt/nyjb6/lib:/cvmfs/sw.hsf.org/spackages6/clhep/2.4.5.1/x86_64-centos7-gcc11.2.0-opt/izf3n/lib:/cvmfs/sw.hsf.org/spackages6/ilcutil/1.6.2/x86_64-centos7-gcc11.2.0-opt/3ldsj/lib:/cvmfs/sw.hsf.org/spackages6/marlintrk/2.9.1/x86_64-centos7-gcc11.2.0-opt/dox47/lib:/cvmfs/sw.hsf.org/spackages6/raida/1.9.0/x86_64-centos7-gcc11.2.0-opt/tap2j/lib:/cvmfs/sw.hsf.org/spackages6/dd4hep/1.21/x86_64-centos7-gcc11.2.0-opt/g26qn/lib:/cvmfs/sw.hsf.org/spackages6/marlinutil/1.16.2/x86_64-centos7-gcc11.2.0-opt/t5hrv/lib:/cvmfs/sw.hsf.org/spackages6/ced/1.9.4/x86_64-centos7-gcc11.2.0-opt/owdkp/lib:/cvmfs/sw.hsf.org/spackages6/gsl/2.7.1/x86_64-centos7-gcc11.2.0-opt/kfh54/lib:/cvmfs/sw.hsf.org/spackages6/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/x7m6r/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/vvicente/ws/CLICPerformance/clicConfig/lib/libClicPerformance.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so"
         OLD_RPATH "/cvmfs/sw.hsf.org/spackages6/root/6.26.02/x86_64-centos7-gcc11.2.0-opt/6eyo7/lib:/cvmfs/sw.hsf.org/spackages6/marlin/1.17.1/x86_64-centos7-gcc11.2.0-opt/z3rcf/lib:/cvmfs/sw.hsf.org/spackages6/lcio/2.17/x86_64-centos7-gcc11.2.0-opt/x6tjd/lib64:/cvmfs/sw.hsf.org/spackages6/gear/1.9.1/x86_64-centos7-gcc11.2.0-opt/nyjb6/lib:/cvmfs/sw.hsf.org/spackages6/clhep/2.4.5.1/x86_64-centos7-gcc11.2.0-opt/izf3n/lib:/cvmfs/sw.hsf.org/spackages6/ilcutil/1.6.2/x86_64-centos7-gcc11.2.0-opt/3ldsj/lib:/cvmfs/sw.hsf.org/spackages6/marlintrk/2.9.1/x86_64-centos7-gcc11.2.0-opt/dox47/lib:/cvmfs/sw.hsf.org/spackages6/raida/1.9.0/x86_64-centos7-gcc11.2.0-opt/tap2j/lib:/cvmfs/sw.hsf.org/spackages6/dd4hep/1.21/x86_64-centos7-gcc11.2.0-opt/g26qn/lib:/cvmfs/sw.hsf.org/spackages6/marlinutil/1.16.2/x86_64-centos7-gcc11.2.0-opt/t5hrv/lib:/cvmfs/sw.hsf.org/spackages6/ced/1.9.4/x86_64-centos7-gcc11.2.0-opt/owdkp/lib:/cvmfs/sw.hsf.org/spackages6/gsl/2.7.1/x86_64-centos7-gcc11.2.0-opt/kfh54/lib:/cvmfs/sw.hsf.org/spackages6/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/x7m6r/lib::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vvicente/ws/CLICPerformance/install/lib:/cvmfs/sw.hsf.org/spackages6/root/6.26.02/x86_64-centos7-gcc11.2.0-opt/6eyo7/lib:/cvmfs/sw.hsf.org/spackages6/marlin/1.17.1/x86_64-centos7-gcc11.2.0-opt/z3rcf/lib:/cvmfs/sw.hsf.org/spackages6/lcio/2.17/x86_64-centos7-gcc11.2.0-opt/x6tjd/lib64:/cvmfs/sw.hsf.org/spackages6/gear/1.9.1/x86_64-centos7-gcc11.2.0-opt/nyjb6/lib:/cvmfs/sw.hsf.org/spackages6/clhep/2.4.5.1/x86_64-centos7-gcc11.2.0-opt/izf3n/lib:/cvmfs/sw.hsf.org/spackages6/ilcutil/1.6.2/x86_64-centos7-gcc11.2.0-opt/3ldsj/lib:/cvmfs/sw.hsf.org/spackages6/marlintrk/2.9.1/x86_64-centos7-gcc11.2.0-opt/dox47/lib:/cvmfs/sw.hsf.org/spackages6/raida/1.9.0/x86_64-centos7-gcc11.2.0-opt/tap2j/lib:/cvmfs/sw.hsf.org/spackages6/dd4hep/1.21/x86_64-centos7-gcc11.2.0-opt/g26qn/lib:/cvmfs/sw.hsf.org/spackages6/marlinutil/1.16.2/x86_64-centos7-gcc11.2.0-opt/t5hrv/lib:/cvmfs/sw.hsf.org/spackages6/ced/1.9.4/x86_64-centos7-gcc11.2.0-opt/owdkp/lib:/cvmfs/sw.hsf.org/spackages6/gsl/2.7.1/x86_64-centos7-gcc11.2.0-opt/kfh54/lib:/cvmfs/sw.hsf.org/spackages6/xerces-c/3.2.3/x86_64-centos7-gcc11.2.0-opt/x7m6r/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libClicPerformance.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/vvicente/ws/CLICPerformance/clicConfig/Tests/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/vvicente/ws/CLICPerformance/clicConfig/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
