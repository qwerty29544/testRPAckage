cars_matrix <- as.matrix(cars)
png(filename = "output/cars_plot.png",width = 600, height = 600)
plot(cars_matrix, type = "p", pch = 19, col = "red", cex = I(1), main = "Данные о максимальной скорости и тормнозной дистанции")
dev.off()

cars_speed <- cbind(1, cars_matrix[, 1])
cars_dist <- cars_matrix[, 2]

alpha <- solve(t(cars_speed) %*% cars_speed) %*% t(cars_speed) %*% cars_dist
png(filename = "output/cars_plot_lm.png",width = 600, height = 600)
plot(cars_matrix, type = "p", pch = 19, col = "red", cex = I(1), main = "Данные о максимальной скорости и тормнозной дистанции")
lines(x = cars_speed[, 2],
      y = alpha[1, 1] * cars_speed[, 1] + alpha[2, 1] * cars_speed[, 2],
      type = "l",
      col = "blue")
legend(x = 5, y = 120,
       legend = c("Данные о машинах", "Аппроксимация"),
       col = c("red", "blue"),
       lty = c(NULL, 1),
       pch = c(19, NULL))
dev.off()


