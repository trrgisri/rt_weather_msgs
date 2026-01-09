std_msgs/Header header

uint32 n_diameters
uint32 n_velocities

float32[] diameter_edges   # edges of diameter bins, n_diameters+1 length
float32[] velocity_edges   # edges of velocity_bins, n_velocities+1 length

uint32[] counts            # n_diameters * n_velocities length
