mean_min <- c(20.285714, 124.833333, 45.833333, 105.277778, 66.250000, 18.071429, 7.000000, 18.666667, 12.916667, 13.750000, 47.166667, 129.583333, 39.000000, 24.289474, 64.361111, 1.666667, 35.500000, 767.250000, 1.500000, 43.416667, 11.333333, 33.571429, 27.666667, 31.566667, 108.500000, 28.500000, 17.222222, 46.833333, 7.000000, 10.400000, 54.000000, 31.000000, 95.750000, 82.666667, 237.833333, 36.333333, 193.166667, 24.323529, 23.166667, 24.000000, 6.083333, 84.500000, 102.083333, 40.666667, 117.166667, 70.277778, 6.333333, 47.166667, 0.500000, 381.750000, 0.000000, 6.000000, 335.000000, 82.444444, 155.150000, 415.250000, 104.500000, 465.375000, 34.371795, 8.000000, 33.583333, 54.250000, 33.338710, 25.333333, 3.000000, 16.350000, 37.625000, 15.166667, 176.673077, 32.180556, 22.500000, 860.750000, 4.333333, 180.209877, 37.957143, 197.000000, 123.333333, 21.375000, 156.750000, 181.700000, 135.805556, 5.833333, 65.000000, 11.250000, 7.833333, 2.000000, 11.166667, 7.166667, 3.166667, 112.500000, 3.000000, 390.000000, 58.666667, 31.562500, 9.500000, 26.142857, 195.833333)

max_min <- c(102.00, 461.00, 181.00, 457.00, 261.00, 192.00, 11.00, 94.00, 26.00, 30.00, 122.00, 299.00, 122.00, 185.00, 302.00, 3.00, 184.00, 1491.00, 5.00, 138.00, 39.00, 285.00, 110.00, 206.00, 442.00, 51.00, 94.00, 169.00, 15.00, 20.00, 108.00, 62.00, 175.00, 220.00, 950.00, 73.00, 707.00, 137.00, 180.00, 48.00, 11.00, 219.00, 449.00, 207.00, 396.00, 537.00, 11.00, 96.00, 1.00, 3290.00, 0.00, 14.00, 5629.00, 201.00, 425.00, 2156.00, 285.00, 899.00, 195.00, 16.00, 154.00, 73.00, 103.00, 153.00, 6.00, 126.00, 149.00, 56.00, 8358.00, 776.00, 116.00, 9934.00, 8.00, 1311.00, 359.00, 394.00, 297.00, 53.00, 367.00, 690.00, 631.00, 12.00, 108.00, 30.00, 17.00, 4.00, 28.00, 28.00, 13.00, 315.00, 10.00, 780.00, 202.00, 197.00, 27.00, 109.00, 1133.00)

mean_min_val = ecdf(mean_min)
max_min_val = ecdf(max_min)

plot(mean_min_val, lty=1, col="grey", pch =16, xlab="First Bit Time (ms)", ylab="CDF", main="First Bit Time with IPs returned by 208.67.222.222", xlim=c(0, 1000))
lines(max_min_val, pch = 17)

legend("bottomright",  pch = c(16, 17), legend=c("Mean time - Min time", "Max time - Min time"), col=c("grey", "black"))

