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
