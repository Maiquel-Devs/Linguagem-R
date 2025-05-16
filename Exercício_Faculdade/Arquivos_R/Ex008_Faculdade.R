# Dados dos defeitos
defeitos <- c(
  1,1,1,1,1,1,1,1,1,1,1,1,
  2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
  3,3,3,3,3,3,3,3,3,3,3,3,3,3,
  4,4,4,4,4,4,4,4,4,4,
  5,5,5,5,5,5,5,
  6,6,6,6,6,6
)

# Média
media_defeitos <- mean(defeitos)

# Moda (função simples)
moda <- function(x) {
  tab <- table(x)
  as.numeric(names(tab)[tab == max(tab)])
}
moda_valor <- moda(defeitos)

# Mediana
mediana_defeitos <- median(defeitos)

# Variância
variancia_defeitos <- var(defeitos)

# Desvio padrão
desvio_padrao_defeitos <- sd(defeitos)

cat("Média dos defeitos:", round(media_defeitos, 2), "\n")
cat("Moda dos defeitos:", moda_valor, "\n")
cat("Mediana dos defeitos:", mediana_defeitos, "\n")
cat("Variância dos defeitos:", round(variancia_defeitos, 2), "\n")
cat("Desvio Padrão dos defeitos:", round(desvio_padrao_defeitos, 2), "\n")

# 2) Coeficiente de variação

media <- 18.3
desvio_padrao <- 1.47
cv <- (desvio_padrao / media) * 100

cat("Coeficiente de Variação:", round(cv, 2), "%\n")

# 3) Coeficiente de Variação para Matemática e Estatística

media_mat <- 7.8
dp_mat <- 0.80
cv_mat <- (dp_mat / media_mat) * 100

media_est <- 7.3
dp_est <- 0.76
cv_est <- (dp_est / media_est) * 100

cat("CV Matemática:", round(cv_mat, 2), "%\n")
cat("CV Estatística:", round(cv_est, 2), "%\n")

# 4) Coeficiente de variação dos grupos

media_grupo1 <- 160.6
dp_grupo1 <- 5.97
cv_grupo1 <- (dp_grupo1 / media_grupo1) * 100

media_grupo2 <- 161.9
dp_grupo2 <- 6.01
cv_grupo2 <- (dp_grupo2 / media_grupo2) * 100

cat("CV Grupo 1:", round(cv_grupo1, 2), "%\n")
cat("CV Grupo 2:", round(cv_grupo2, 2), "%\n")

# 5) Desvio padrão a partir do coeficiente de variação

media <- 163.8
cv <- 3.3

desvio_padrao <- (cv * media) / 100

cat("Desvio Padrão:", round(desvio_padrao, 2), "cm\n")

