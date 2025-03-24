# Variável.

a <- 'Heitor'
b <- 'Joao'

# Função c (Combina valores dentro de um vetor ou uma lista).

c = c(a,b)

# help usa o " ? " 

?c

# Função summary

d <- c(10, 5, 15, 20)

summary(d)

?summary

# Instalando Pacote

install.packages("stringr")
library(stringr)

# str_c

nome <- 'Joao'
sobrenome <- 'Silva'

NomeCompleto <- str_c(nome," ",sobrenome)

# as.factor()

cores <- c('vermelho', 'azul', 'verde', 'azul', 'vermelho')

cores_factor <- as.factor(cores)

summary(cores_factor)

esta_quente <- 25 < 30

frio <- FALSE

# Lista 

minha_lista <- list(nome = 'Joao', idade = 25, notas = c(8.5, 9.2, 7.8))

minha_lista[['nome']]
minha_lista[1]

# Matriz

m <- matrix(1:9, nrow=3, ncol =3)
m

# m[linha, coluna]
m[1,3]
m[2,1]
