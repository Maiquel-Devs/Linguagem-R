# 1 ) 

# Vetores : Conjunto de dados criado pela função c
# Lista : Guarda diferentes tipos de dados de uma só vez (numero, caracter, funções e etc)
# Fator : Transforma os Dados em Níveis
# data.frame : Dados guardado em forma de Tabelas 

# 2 ) 

# Transforma os dados em níveis facilitando a visualização e a diferenciação
# dos daddos.

# 3 ) 

# Além de ser uma tabela armazena valores através de linhas e colunas
# E tambem armazena valores valores (caracter e numeros), diferete da matriz
# que só armazena números.

# 4 )

Reserva <- c('A','A','A','A','A','A','A','A','A','A','B','B','B','B','B','B','B','B','B','B')
Macacos <- c(22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16)
Frutíferas <- c(25,26,40,30,10,20,35,8,35,28,6,17,18,11,6,15,20,16,12,15)

macac <- data.frame(Reserva,Macacos,Frutíferas)
print(macac)

# A )

analizar <- macac$Reserva  # Não usa [] ao usar o $ a não ser se tiver dentro de uma função.
is.character(analizar)

# ou 

is.character(macac$Reserva)

# B ) 

is.factor(macac$Reserva)

# C ) 

mode(macac$Reserva)
is.factor(macac$Reserva)

# D ) 

macac$Macacos

# E ) 

macac$Macacos[12] # É so botar Linha no Data.Frame

# F )

Mortes <- c(2,7,1,2,7,4,2,4,3,9,6,6,4,1,3,1,7,2,1,8)

macac <- cbind(macac, Mortes)
print(macac)

# G ) 

macac$Frutíferas <- NULL
print(macac)

# H ) 

macac[1:10,]  # Use a repetição para escolher só a Reserva 'A'
A <- macac[1:10,]

# I ) 

mean(A$Macacos)  # Média de Macacos
mean(A$Mortes)   # Média de Mortes

# J ) 

A[order(A$Mortes),]
print(A)

# K ) 

split(macac, Reserva)$A