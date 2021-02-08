# Создадим матрицу
matrix1 <- matrix(c(1, 6, 0, 4),
                  byrow = T,
                  ncol = 2,
                  dimnames = list(c("eq1", "eq2"),
                                  c("x1", "x2")))
print(matrix1)

matrix2 <- diag(rep(1, 2))

matrix3 <- matrix2 - matrix1

print(matrix3)

u <- c(1, 0)
f <- c(1, 3)

u1 <- matrix3 %*% u + f
u2 <- matrix3 %*% u1 + f
u3 <- matrix3 %*% u2 + f
u4 <- matrix3 %*% u3 + f
u5 <- matrix3 %*% u4 + f
u6 <- matrix3 %*% u5 + f
