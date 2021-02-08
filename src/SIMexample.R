# Создадим матрицу
matrix1 <- matrix(c(4, 0, 0, 9),
                  byrow = T,
                  ncol = 2,
                  dimnames = list(c("eq1", "eq2"),
                                  c("x1", "x2")))
eigen(matrix1)
print(matrix1)
matrix2 <- diag(rep(1, 2))
matrix3 <- matrix2 - matrix1
print(matrix3)
u <- c(0.2, -0.3)
f <- c(4, 2)
solve(matrix1) %*% f

u1 <- matrix3 %*% u + f
u2 <- matrix3 %*% u1 + f
u3 <- matrix3 %*% u2 + f
u4 <- matrix3 %*% u3 + f
u5 <- matrix3 %*% u4 + f
u6 <- matrix3 %*% u5 + f
u7 <- matrix3 %*% u6 + f
u8 <- matrix3 %*% u7 + f
u9 <- matrix3 %*% u8 + f
u10 <- matrix3 %*% u9 + f

f <- f/max(matrix1)
matrix1 <- matrix1/max(matrix1)
eigen(matrix1)
print(matrix1)
matrix2 <- diag(rep(1, 2))
matrix3 <- matrix2 - matrix1
print(matrix3)
u <- c(0.2, -0.3)
solve(matrix1) %*% f

u1 <- matrix3 %*% u + f
u2 <- matrix3 %*% u1 + f
u3 <- matrix3 %*% u2 + f
u4 <- matrix3 %*% u3 + f
u5 <- matrix3 %*% u4 + f
u6 <- matrix3 %*% u5 + f
u7 <- matrix3 %*% u6 + f
u8 <- matrix3 %*% u7 + f
u9 <- matrix3 %*% u8 + f
u10 <- matrix3 %*% u9 + f

solve(matrix1) %*% f - u10
