cmake_minimum_required(VERSION 3.8)

project(rt_weather_msgs)

set(CMAKE_VERBOSE_MAKEFILE 1)

find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/BarometricPressure.msg"
  "msg/CumulativeHailfall.msg"
  "msg/CumulativePrecipitation.msg"
  "msg/HailfallRate.msg"
  "msg/Irradiance.msg"
  "msg/MeteorologicalOpticalRange.msg"
  "msg/ParticleDensity.msg"
  "msg/ParticleSizeVelocityDistribution.msg"
  "msg/PrecipitationRate.msg"
  "msg/SpectralTransmittance.msg"
  "msg/SoundNoise.msg"
  "msg/Transmittance.msg"
  "msg/Wind.msg"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES std_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  set(ament_cmake_copyright_FOUND TRUE)
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_export_dependencies(rosidl_default_runtime)

ament_package()
