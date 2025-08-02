# 1 ) 

Marca <- c("A", "A", "A", "A", "B", "B", "B", "B")
Tratamento <- c("T1", "T2", "T3", "T4", "T1", "T2", "T3", "T4")
Indice <- c(0.97, 0.68, 0.10, 0.15, 0.78, 0.76, 0.14, 0.05)

dados <- data.frame(Marca, Tratamento, Indice)

anova_resultado <- aov(Indice ~ Tratamento, data = dados)
summary(anova_resultado)

# Sim, o teste ANOVA indicou que há diferença 
# significativa entre os tratamentos de lavagem ao 
# nível de 5%.

# 2 ) 

# a ) 

vida <- c(23,18,16,10,11,15, 32,40,42,38,30,34, 31,37,35,33,
          34,30, 28,34,32,30,33,31)

pneu <- factor(rep(c("A", "B", "C", "D"), each = 6))

dados_pneu <- data.frame(pneu, vida)

anova_pneu <- aov(vida ~ pneu, data = dados_pneu)
summary(anova_pneu)

tukey <- TukeyHSD(anova_pneu)
print(tukey)


# O teste Tukey mostrou que os pneus do tipo A têm 
#  vida útil significativamente menor do que os 
#  pneus dos tipos B, C e D, ao nível de significância 
#  de 5%.

# b ) 

plot(tukey, las = 1, col = "blue")
title("Comparações de Tukey entre tipos de pneus")

# 3 ) 

# A ) ANOVA e Tukey HSD 

# B ) Identificar parâmetros significativos e seus 
#     valores ótimos no algoritmo

# C ) a = 0,05

# D ) Não especificado (provavelmente R, SPSS ou similar)

# E ) (1) Intervalos de confiança do Tukey; 
#     (2) Boxplots comparativos dos resultados


# 4 ) 

# A ) ANOVA mista (mixed-effects ANOVA)

# B ) Avaliar variabilidade interobservador e 
#     efeitos de examinador/paciente/loop

# C ) a =0,0083 (Bonferroni)

# D ) R (R Core Team)

# E ) Scatter plot de medidas por combinação 
#    examinador‑paciente, com letras “a”, “b”, etc., 
#    indicando testes de comparação múltipla