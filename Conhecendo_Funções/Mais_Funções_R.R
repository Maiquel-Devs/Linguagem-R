num = 123.46

round(num, 1) # Meche nas casas decimais 

signif(num, 4)   # Meche no numero inteiro 'Da preferencia para numero par'

a <- 12
b <- 5

remove(a,b)
# ou 
rm(a,b)

numeros <- c(5,4,15,20)
# Tipo Da Variável
mode(numeros)

# Mede o Tamanho da Variável
length(numeros)

# Usanso o 'is' para saber o tipo da variável
is.numeric(numeros)
is.character(numeros)

# Usando o 'Na'

pesos<-c(62,NA,76,93,49)

mean(pesos)
# Habilitar o NA 
mean(pesos,na.rm = T)

# Sequencias 

seq(1,10)
seq(1,10,2)

seq(10,1,-1)

# ou

1:10
10:1

# Repetições 

rep(10, 7)

rep(c(1,2), 4)


# Matrizes

x <- matrix(1:10, nrow = 2, ncol = 5, byrow = T)

y <- 1:10

matriz <- matrix(y, nrow = 2, ncol = 5, byrow = T)

# cbind " adicionar coluna "  rbind " adicionar linha "

x <- matrix(1:10, nrow = 5, ncol = 2)

y <- cbind(x,1:5)  #Adicionando Coluna
print(y)

z <- rbind(x, 1:2) # Adicionando Linha
print(z)

# Acessando/Extraindo linha e coluna de uma matriz

print(x)

z[2,]   # Extraindo Linha 
z[,1]   # Extraindo Coluna

# Dimensão " Mostra a quantidade de linha e coluna de uma Matriz "
dim(x)

# Array cria mais de 1 matriz de uma só vez

x <- array(1:24, c(4,2, 3))  # Num de Linha , Num de Coluna , Num de Matriz
print(x)

x[3,2,3] # 3 linha , 2 coluna , 3 matriz

# Fatores " Transforma os Dados em Níveis "

sexo <- c("f", "m", "m", "m", "f", "m", "f", "m", "f", "f")

sexo <- factor(sexo)

summary(sexo)

# Lista " armazena diferentes tipos de dados (dados com string, numero, e até funções)
# Dentro da Lista usa o sempre o sinal de igual
pessoa <- list(nome = 'maria', idade = 15, sexo = 'F', notas = c(10,10,9))

pessoa$nome
pessoa$idade
pessoa$sexo
pessoa$notas

# Data.Frames " Criação de tabelas "

Nome <- c('João', 'Maria', 'Julia', 'Pedro', 'Rafael')
Idade <- c(64, 17, 15, 21, 32)
Sexo <- c('M', 'F', 'F', 'M', 'M')
Notas <- c(10,10,10,8,9)

escola <- data.frame(Nome, Idade, Sexo, Notas)
print(escola)

escola[2,]
escola[2,1]

escola$Sexo
escola$Notas

faltas <- c(1,1,1,3,3)

escola_atualizado <- cbind(escola,faltas)
print(escola_atualizado)

escola_atualizado[order(escola_atualizado$Idade)]

print(escola_atualizado)
escola_atualizado$Sexo <- NULL
print(escola_atualizado)
