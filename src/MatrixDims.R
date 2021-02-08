# Задание матрицы
matrix <- cbind(1:4, 9:6, c(1.8, 9.1, -2.3, 3.4))
print(matrix)

# Агрегации
print(rowSums(matrix))     # Сумма элементов в строках
print(colSums(matrix))     # Сумма элементов в столбцах
print(apply(X = matrix, MARGIN = 1, FUN = sum))
print(apply(matrix, 2, sum))

# Другие агрегации
print(apply(matrix, 1, prod))
print(apply(matrix, 2, mean))
print(apply(matrix, 2, max))
