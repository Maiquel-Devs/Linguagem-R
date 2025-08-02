# 1) Teste t para carga média > 10 MPa

carga <- c(
  19.8, 15.4, 11.4, 19.5, 10.1, 18.5, 14.1, 8.8, 14.9, 7.9,
  17.6, 13.6, 7.5, 12.7, 16.7, 11.9, 15.4, 11.9, 15.8, 11.4,
  15.4, 11.4
)

summary(carga)
mean(carga)   

t.test(carga, mu = 10, alternative = "greater")

# Interpretação:
# p < 0.05 indica que rejeitamos H0 (média = 10).
# Portanto, há evidências de que a carga média > 10 MPa.


# 2) Teste t para diferença de médias entre dois catalisadores (variâncias iguais)

Catalisador_01 <- c(91.5, 94.18, 92.18, 95.39, 91.79, 89.07, 94.72, 89.21)
Catalisador_02 <- c(89.19, 90.95, 90.46, 93.21, 97.19, 97.04, 91.07, 92.75)

mean(Catalisador_01)
mean(Catalisador_02)
var(Catalisador_01)
var(Catalisador_02)

t.test(Catalisador_01, Catalisador_02, var.equal = TRUE, alternative = "two.sided")

# Interpretação:
# p > 0.05, não rejeitamos H0 (médias iguais).
# Logo, catalisador 2 pode ser adotado sem perda de rendimento.


# 3) Teste F para comparação das variâncias dos processos de esmerilhamento

n1 <- 11
n2 <- 16
s1 <- 5.1
s2 <- 4.7

# Calculando razão F (variância maior / menor)
F_value <- (s1^2) / (s2^2)
df1 <- n1 - 1
df2 <- n2 - 1

# Teste bilateral de variância
p_value <- 2 * min(pf(F_value, df1, df2), 1 - pf(F_value, df1, df2))

cat("F =", F_value, "\n")
cat("p-value =", p_value, "\n")

# Ou usar a função var.test simulando amostras
# var.test(x = rnorm(n1, sd = s1), y = rnorm(n2, sd = s2), conf.level = 0.90)

# Interpretação:
# Se p < 0.10, rejeita H0 (variâncias iguais) ao nível 90%.
# Caso contrário, aceita H0.


# 4) Verificação da normalidade dos dados de carga

shapiro.test(carga)

hist(carga, probability = TRUE, col = "lightgray", main = "Histograma com Curva Normal")
curve(dnorm(x, mean=mean(carga), sd=sd(carga)), add=TRUE, col="blue", lwd=2)

# p > 0.05 indica que não rejeitamos H0 (dados normais).


# 5) Verificação da normalidade para os catalisadores

shapiro.test(Catalisador_01)
shapiro.test(Catalisador_02)

qqnorm(Catalisador_01, main = "Q-Q Plot - Catalisador 01")
qqline(Catalisador_01, col = "blue")

qqnorm(Catalisador_02, main = "Q-Q Plot - Catalisador 02")
qqline(Catalisador_02, col = "blue")

# p-values > 0.05 indicam que podemos assumir normalidade para ambos.
