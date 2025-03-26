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

