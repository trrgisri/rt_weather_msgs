std_msgs/Header header

float64 wavelength_min             # minimum wavelength (nm)
float64 wavelength_increment       # wavelength interval (nm)
uint32 n_wavelengths               # number of wavelength points

float64 measurement_distance       # in mm

float64[] transmittances           # transmittance ratios between 0.0 and 1.0
float64[] variances                # 0.0s if unknown
