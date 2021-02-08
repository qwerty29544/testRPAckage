# инициализируем матрицу
matrix <- diag(1:4)
print(matrix)

# попробуем посмотреть на имена строк и столбцов
cat("\nСтроки:\n")
print(rownames(matrix))
cat("\nСтолбцы:\n")
print(colnames(matrix))

# присвоим имена
cat("\nПрисвоение названий\n")
rownames(matrix) <- paste0("row", 1:4)
colnames(matrix) <- paste0("col", 1:4)
cat("Присвоение завершено\n")

# попробуем посмотреть на имена строк и столбцов
cat("\nСтроки:\n")
print(rownames(matrix))
cat("\nСтолбцы:\n")
print(colnames(matrix))


