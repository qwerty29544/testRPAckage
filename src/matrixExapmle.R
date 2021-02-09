step <- 1               # Шаг сетки
dekart_begin <- -5      # Начало сетки
dekart_end <- 5         # Конец сетки

# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- seq(from = dekart_begin, to = 6, by = step)

# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5  * x * y)))
dimnames(surface_matrix) <- list(x, y)

