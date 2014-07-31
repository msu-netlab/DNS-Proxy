ldns_google <- c(-84, -357, -10, 138, 27, -3, -34, 110, 3, -235, -1034, 116, 82, -107, -6, 184, -31, -3, 0, -5, 269, -45, -9, 122, 263, 84, 28, 1, 34, -116, -1399, 174, -10, -93, -269, -749, 263, -15, 107, -234, 37, -23, 15, 9, -17, 1, 25, -23, 107, 36, -116, 10, 78, -106, 0, -53, 0, -355, 156, -1000, 64, -1115, 126, 101, 41, 47, -77, 89, -73, 56, 2, -6, -77, -1, -43, -239, 8, 69, 1049, -113, 16, -35, 250, -1, -1059, -984, 92, 122, 196, -3, 123, 21, 44, -1, 9, -56, 1589, 1, -41, -33, 0, -103, 7, 4, 15, 2)

ldns_03 <- c(-2, -935, 213, 1, 129, -39, -216, 64, 60, 14, 827, 126, 82, 3, 177, 16, -27, 168, -1149, -1002, -73, -43, -19, -13, 468, 84, 28, 2, 0, 116, -41, 17, -125, 278, -90, 263, 112, 86, 37, -8, 146, 6, 147, 104, 104, 106, 53, 33, -7, 10, 56, -1, 21, -15, -13, -5, 156, 100, 102, 1115, -22, -38, -151, 11, -76, 93, 28, 56, -2, -15, 33, -94, 81, -126, 5, -211, 198, 106, -2, -35, 0, -49, -24, 69, 3, 122, 208, -11, 123, 84, 44, 40, 53, 52, 1184, -5, 41, -20, 0, -898, 65, 3, 15, 15)

ldns_222 <- c(-4, 133, 101, 137, -88, -32, -39, 110, -60, 235, 832, 19, 83, 6, 177, 184, 166, -1409, -124, 173, 269, -334, -39, 125, 429, 61, -4, 0, -6, -141, 174, -2, -47, -1169, 311, -750, -112, 84, -267, -21, 100, 13, 112, -8, 104, 104, 6, 107, 40, -67, -14, 78, -15, 21, -95, 105, -35, 156, 100, 102, 173, -25, 47, 41, 1, -66, 31, 28, -10, 0, 2, -88, -1, 83, 9, 105, 278, 107, 16, -453, 0, -49, -146, -127, -50, 105, 234, -2, 74, 86, 44, -1, 4, 52, 1589, -11, 41, -1, -32, -14, -13, 29, -32, 134)

ldns_google_val = ecdf(ldns_google)
ldns_03_val = ecdf(ldns_03)
ldns_222_val = ecdf(ldns_222)

plot(ldns_google_val, lty=1, col="grey", pch = 16, xlab="Time (ms)", ylab="CDF", main="DNS Server Selection based on First Bit Time", xlim=c(-400, 400))
lines(ldns_03_val, pch = 17, col = "black")
lines(ldns_222_val, pch = 18, col = "red")

legend("bottomright",  pch = c(16, 17, 18), legend=c("LDNS - 8.8.8.8", "LDNS - 0.3", "LDNS - .222"), col=c("grey", "black", "red"))

