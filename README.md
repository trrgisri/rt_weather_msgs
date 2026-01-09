# rt_weather_msgs

This ROS 2 package defines custom message types for real-time weather observation data collected from meteorological instruments and sensors.

It provides a comprehensive set of message definitions for representing various meteorological measurements, including wind, precipitation, solar irradiance, barometric pressure, sound noise, and optical transmittance.
These messages are designed for use in ROS 2-based systems for real-time weather monitoring, sensor fusion, and environmental data analysis.

The defined message types are intended to complement the standard messages provided in the [`sensor_msgs`](https://github.com/ros2/common_interfaces/tree/humble/sensor_msgs/msg) package, such as:

- `sensor_msgs/msg/Temperature`,
- `sensor_msgs/msg/RelativeHumidity`,
- `sensor_msgs/msg/Illuminance`.

## Message Definitions

### [`rt_weather_msgs/msg/BarometricPressure.msg`](msg/BarometricPressure.msg)

- `header` (`std_msgs/Header`)
- `barometric_pressure` (`float64`): Absolute pressure in Pascals (Pa).
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/CumulativeHailfall.msg`](msg/CumulativeHailfall.msg)

- `header` (`std_msgs/Header`)
- `cumulative_hailfall` (`float64`): Cumulative hail accumulation in hits/cm^2
- `duration` (`float64`): Duration of hailfall in sec.
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/CumulativePrecipitation.msg`](msg/CumulativePrecipitation.msg)

- `header` (`std_msgs/Header`)
- `cumulative_precipitation` (`float64`): Cumulative precipitation in mm
- `duration` (`float64`): Duration of precipitation in sec.
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/HailfallRate.msg`](msg/HailfallRate.msg)

- `header` (`std_msgs/Header`)
- `hailfall_rate` (`float64`): Hailfall rate in hits/cm^2h
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/Irradiance.msg`](msg/Irradiance.msg)

- `header` (`std_msgs/Header`)
- `irradiance` (`float64`): Solar irradiance in W/m^2.
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/MeteorologicalOpticalRange.msg`](msg/MeteorologicalOpticalRange.msg)

- `header` (`std_msgs/Header`)
- `meteorological_optical_range` (`float64`): Meteorological Optical Range (MOR) in meters.
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/ParticleDensity.msg`](msg/ParticleDensity.msg)

- `header` (`std_msgs/Header`)
- `particle_density` (`float64`): Particle density (m^-3).
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/ParticleSizeVelocityDistribution.msg`](msg/ParticleSizeVelocityDistribution.msg)

- `header` (`std_msgs/Header`)
- `n_diameters` (`uint32`): Number of diameter bins.
- `n_velocities` (`uint32`): Number of velocity bins.
- `diameter_edges` (`float32[]`): Edges of diameter bins.
- `velocity_edges` (`float32[]`): Edges of velocity bins.
- `counts` (`uint32[]`): Count matrix of size `n_diameters×n_velocities`.

### [`rt_weather_msgs/msg/PrecipitationRate.msg`](msg/PrecipitationRate.msg)

- `header` (`std_msgs/Header`)
- `precipitation_rate` (`float64`): Precipitation rate in mm/h.
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/SoundNoise.msg`](msg/SoundNoise.msg)

- `header` (`std_msgs/Header`)
- `sound_noise` (`float64`): Sound noise level in decibels (dB).
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/SpectralTransmittance.msg`](msg/SpectralTransmittance.msg)

- `header` (`std_msgs/Header`)
- `wavelength_min` (`float64`): Minimum wavelength (nm).
- `wavelength_increment` (`float64`): Wavelength interval (nm).
- `n_wavelengths` (`uint32`): Number of wavelength points.
- `measurement_distance` (`float64`): Measurement distance (mm).
- `transmittances` (`float64[]`): Transmittance ratios between 0.0 and 1.0.
- `variances` (`float64[]`): `0.0`s if unknown.

### [`rt_weather_msgs/msg/Transmittance.msg`](msg/Transmittance.msg)

- `header` (`std_msgs/Header`)
- `wavelength` (`float64`): in nm; `0.0` indicates unknown or ignored.
- `measurement_distance` (`float64`): Din mm.
- `transmittance` (`float64`): Transmittance ratio between 0.0 and 1.0.
- `variance` (`float64`): `0.0` if unknown.

### [`rt_weather_msgs/msg/Wind.msg`](msg/Wind.msg)

- `header` (`std_msgs/Header`)
- `wind_direction` (`float64`): Wind direction in degrees; 0°corresponds to north and 90°to east.
- `wind_speed` (`float64`): Wind speed in m/s.
- `variance_wind_direction` (`float64`): `0.0` if unknown.
- `variance_wind_speed` (`float64`): `0.0` if unknown.

## Dependencies

- `std_msgs`
- `rosidl_default_generators`
- `rosidl_default_runtime`
- `ament_cmake`

## Build Instructions

```bash
cd <ROS2 WS>/src
git clone https://github.com/trrgisri/rt_weather_msgs.git
cd ..
rosdep install --from-paths src --ignore-src -r -y
colcon build --packages-select rt_weather_msgs
source install/setup.bash
```

## License

MIT License

## Maintainer

Yasushi Sumi (<y.sumi@aist.go.jp>)
