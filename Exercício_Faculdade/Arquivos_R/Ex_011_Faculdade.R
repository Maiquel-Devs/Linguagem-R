# 1 ) 

# A ) 

vida_media <- c(
  53, 58, 56, 60, 51, 55,  # Válvula A
  52, 60, 52, 58, 50, 54,  # Válvula B
  51, 57, 55, 53, 54, 50,  # Válvula C
  49, 54, 52, 50, 53, 51   # Válvula D
)

válvula <- factor(rep(c("A", "B", "C", "D"), each = 6))

# B ) 

anova_resultado <- aov(vida_media ~ válvula)
summary(anova_resultado)

# C ) 

dados <- data.frame(válvula, vida_media)

# D ) 

dados <- data.frame(válvula, vida_media)

# 2 ) 

densidade <- c(
  3.6, 3.5, 3.7, 3.1, 3.1, 3.2,  # Mistura A
  3.3, 3.5, 3.4, 3.2, 3.4, 3.4,  # Mistura B
  3.5, 3.3, 3.4, 3.4, 3.3, 3.2,  # Mistura C
  3.5, 3.4, 3.0, 3.3, 3.3, 3.8,  # Mistura D
  3.7, 3.4, 3.6, 3.5, 3.6, 3.4   # Mistura E
)

mistura <- factor(rep(c("A", "B", "C", "D", "E"), each = 6))

anova_resultado <- aov(densidade ~ mistura)
summary(anova_resultado)

# Sim, há evidência estatística, ao nível de 5%, de que pelo 
# menos uma das misturas possui densidade média diferente das outras.

# 3 ) 

tempo <- c(
  40, 59, 42,  # Operário 1 (Máquinas A, B, C)
  39, 55, 51,  # Operário 2
  47, 55, 45,  # Operário 3
  45, 50, 40,  # Operário 4
  52, 52, 41   # Operário 5
)

operario <- factor(rep(1:5, each = 3))
maquina <- factor(rep(c("A", "B", "C"), times = 5))


modelo <- aov(tempo ~ maquina + operario)
summary(modelo)

# Existem diferenças no tempo médio de execução entre as máquinas.

# Existem diferenças no desempenho dos operários. 


# 4 ) 

producao <- c(
  15, 12, 10, 14,  # Solo A
  19, 15, 12, 11,  # Solo B
  18, 14, 15, 12,  # Solo C
  16, 11, 12, 16,  # Solo D
  17, 16, 11, 14   # Solo E
)

solo <- factor(rep(c("A", "B", "C", "D", "E"), each = 4))
cafe <- factor(rep(c("I", "II", "III", "IV"), times = 5))

modelo <- aov(producao ~ solo + cafe)
summary(modelo)

# Sim, ao nível de 5%, há evidências de que a produção de café varia tanto em 
# função do tipo de solo quanto da variedade de semente utilizada.