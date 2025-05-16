# Modelo Binomial 

# 1 ) Qual é a probabilidade de se obter 3 caras em 5 lançamentos de uma 
#     moeda honesta?

dbinom(3, size = 5, prob = 0.5)


# 2 ) Qual é a probabilidade de se obter menos que 3 caras em 5 
#     lançamentos da mesma moeda?

pbinom(2, size = 5, prob = 0.5)


# 3 ) Se a probabilidade de atingir um alvo num único disparo é 0,3, 
#     qual é a probabilidade de que  em 4 disparos o alvo seja 
#     atingido no mínimo 3 vezes?

pbinom(2, size = 4, prob = 0.3, lower.tail = FALSE)


# Modelo Poisson 

# 1) Um departamento de polícia recebe em média 5 solicitações
#   por hora. Qual a probabilidad  e de receber 2 solicitações numa 
#   hora selecionada aleatoriamente?


dpois(2, lambda = 5) 

# 2 )  A experiência passada indica que um número médio de
#      6 clientes por hora para para colocar gasolina numa bomba.

dpois(2, lambda = 5)


# A) Qual é a probabilidade de 3 clientes pararem qualquer hora?

dpois(3, lambda = 6)

# B) Qual é a probabilidade de 3 clientes ou menos pararem em qualquer hora?

ppois(3, lambda = 6)
