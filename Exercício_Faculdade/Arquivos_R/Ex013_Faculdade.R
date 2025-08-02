# 1 ) 

# a) Criar o data frame e plotar o gráfico
dias <- c(1, 45, 90, 135, 180)
vitamina_c <- c(4.09, 3.27, 2.45, 3.27, 1.64)

dados <- data.frame(dias, vitamina_c)

# Plotando os dados
plot(dados$dias, dados$vitamina_c,
     main = "Teor de Vitamina C vs Dias de Armazenamento",
     xlab = "Dias de Armazenamento",
     ylab = "Vitamina C (mg/100ml)",
     pch = 19, col = "blue")

# b) Ajustar o modelo de regressão linear
modelo <- lm(vitamina_c ~ dias, data = dados)
summary(modelo)  # Mostra os coeficientes da reta

# c) Prever o teor de vitamina C com 20 dias
predict(modelo, data.frame(dias = 20))  # Resultado previsto

# d) Plotar novamente com reta e resíduos
plot(dados$dias, dados$vitamina_c,
     main = "Vitamina C vs Dias com Regressão e Resíduos",
     xlab = "Dias", ylab = "Vitamina C (mg/100ml)",
     pch = 19, col = "blue")

# Adicionar reta de regressão
abline(modelo, col = "red", lwd = 2)

# Valores ajustados
valores_ajustados <- fitted(modelo)

# Adicionar os resíduos (segmentos entre ponto real e ponto na reta)
segments(dados$dias, dados$vitamina_c, dados$dias, valores_ajustados, col = "gray")

# e) Conclusão

summary(modelo)

# Pode-se concluir que, embora haja uma tendência de perda de vitamina C com o 
# tempo, outros fatores (como erros experimentais ou condições de armazenamento) 
# podem estar influenciando o resultado, especialmente no ponto dos 135 dias.


# 2 ) 

# Dados
x <- c(5.2, 5.1, 4.9, 4.6, 4.7, 4.8, 4.6, 4.9)
y <- c(13, 15, 18, 20, 19, 17, 21, 16)

# Criar data frame
dados <- data.frame(x, y)

# a) Gráfico de dispersão
plot(dados$x, dados$y,
     main = "Horas de Treinamento vs Tempo de Trabalho",
     xlab = "Horas de Treinamento",
     ylab = "Tempo para concluir o trabalho",
     pch = 19, col = "blue")

# b) Regressão linear
modelo <- lm(y ~ x, data = dados)
summary(modelo)  # Mostra coeficientes e R²

# c) Adicionar a reta de regressão ao gráfico
plot(dados$x, dados$y,
     main = "Regressão Linear - Horas de Treinamento vs Tempo de Trabalho",
     xlab = "Horas de Treinamento",
     ylab = "Tempo para concluir o trabalho",
     pch = 19, col = "blue")
abline(modelo, col = "red", lwd = 2)

# d) Coeficiente de determinação (R²)
r2 <- summary(modelo)$r.squared
cat("Coeficiente de determinação R² =", round(r2, 4), "\n")

# Interpretar a equação da reta
a <- coef(modelo)[1]
b <- coef(modelo)[2]
cat("Equação da reta: y =", round(a, 4), "+", round(b, 4), "* x\n")


# cerca de 89% da variação no tempo de trabalho é explicada pelo tempo de treinamento.
# Como a inclinação é negativa, indica que quanto mais horas de treinamento, 
# menor o tempo necessário para concluir o trabalho.