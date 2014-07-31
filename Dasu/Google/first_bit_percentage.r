mean_min <- c(54.103743, 18.263324, 35.333707, 3.746398, 17.417194, 48.460642, 31.429515, 72.364971, 81.687898, 85.333333, 25.767320, 43.861962, 16.479401, 44.845484, 26.075048, 83.832335, 36.905871, 33.419414, 31.210006, 40.602342, 77.798861, 51.203501, 9.173356, 22.500670, 58.869094, 23.897458, 42.076503, 59.186116, 39.957533, 26.653504, 6.794135, 43.013776, 43.564356, 27.941176, 40.601504, 46.381900, 32.741617, 11.199447, 56.218152, 3.504043, 16.759777, 47.857230, 19.592875, 65.125877, 43.762858, 43.066884, 91.752577, 100.000000, 52.434457, 52.900588, 31.708225, 26.285367, 55.545617, 50.127476, 50.185874, 74.468085, 38.779174, 31.578947, 82.142857, 11.556135, 59.701493, 42.114859, 28.632025, 51.958763, 28.427018, 42.622951, 64.529734, 14.281827, 25.714900, 60.383752, 14.145439, 7.671817, 8.048564, 17.999078, 23.311676, 32.681388, 37.764777, 18.937759, 51.009017, 48.103078, 84.052533, 51.087807, 59.615385, 42.700730, 55.498458, 34.710744, 27.441882, 39.803440, 24.504505, 3.667925, 69.526758, 54.975124, 46.614009, 17.619603, 61.935484, 34.323432, 34.189738, 67.636110, 13.371454, 20.025747, 14.586475, 54.986523, 27.482069, 9.147039, 77.880795, 29.318770, 41.758242, 82.853855, 80.417755, 56.230032, 62.391681, 61.117196, 15.641436, 34.848485, 80.347826, 59.449541, 27.996716, 21.900232, 33.821349, 59.178205, 34.546292, 17.760237, 25.170307)

max_min <- c(13.114754, 4.243827, 13.409962, 0.649351, 4.727273, 8.355091, 5.573770, 32.857143, 66.279070, 72.727273, 13.087935, 5.392419, 5.755396, 6.382979, 3.043478, 32.692308, 15.207373, 11.133603, 18.271605, 10.035842, 19.431280, 7.926829, 0.948276, 7.148936, 22.877784, 9.337861, 10.294118, 12.874251, 7.389163, 2.835539, 1.632438, 14.173228, 10.476190, 5.248619, 14.473684, 9.539474, 21.391753, 0.643317, 15.227934, 0.452899, 10.091743, 18.733961, 4.622642, 25.962488, 8.823529, 7.407407, 84.761905, 100.000000, 12.785388, 23.793103, 8.132875, 2.080624, 22.585925, 7.319588, 13.940520, 11.456628, 6.521739, 12.149533, 28.750000, 1.209329, 34.482759, 23.404255, 0.476190, 30.882353, 7.297605, 25.000000, 13.953488, 3.388634, 6.701031, 27.442827, 1.401500, 2.020202, 2.107896, 0.318916, 3.790984, 11.974110, 28.571429, 0.439883, 4.796512, 12.444444, 65.882353, 4.339964, 28.181818, 9.386282, 11.627907, 4.746318, 0.274398, 2.963776, 1.085348, 0.220972, 41.587302, 9.798271, 1.720002, 1.886792, 32.000000, 5.031447, 1.518603, 20.647773, 1.488372, 4.382121, 1.906158, 13.934426, 3.963415, 0.256575, 39.837398, 4.087193, 12.541254, 57.971014, 57.142857, 16.117216, 25.487728, 35.227273, 3.127572, 5.043860, 49.253731, 24.107143, 3.677343, 2.857143, 7.763975, 24.038462, 5.050505, 1.727116, 12.698413)

mean_min_val = ecdf(mean_min)
max_min_val = ecdf(max_min)

plot(mean_min_val, lty=1, col="grey", pch = 16, xlab="%", ylab="CDF", main="First Bit Time Percentage Difference with IPs returned by all DNS", xlim=c(0, 100))
lines(max_min_val, pch = 17)

legend("bottomright",  pch = c(16, 17), legend=c("(Min/Mean)%", "(Min/Max)%"), col=c("grey", "black"))

