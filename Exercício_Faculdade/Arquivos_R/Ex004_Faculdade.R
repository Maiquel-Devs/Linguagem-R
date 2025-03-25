install.packages("readxl")
library(readxl)
# 1 )
A <- matrix(c(2, 5, 2, 6, 1, 4), nrow = 2, ncol = 3, byrow = TRUE)
A
# 2 )
D <- matrix(c(15,18,21,27,18,10,14,5,4), nrow = 3, ncol = 3, byrow = TRUE)
D_Res <- D * 2
D_Res
# 3 )
B1 <- matrix(c(1,2,2,4,7,6), nrow = 3, ncol = 2, byrow = TRUE)
B2 <- matrix(c(10,20,30,40,50,60), nrow = 3, ncol = 2, byrow = TRUE )
M <- 2/7 * (B1 - B2)
M
# 4 )
resultado_4 <- A %*% M
resultado_4
# 5 )
range(A)
A
# Valores máximo e minimo são entre 1 e 6
# 6 )
sum(A)
A
# 7 )
prod(A)
A
# 8 )
colSums(A)
A
# 9 )
sum(B1[B1 < 4])
B1
# 10 )
df <- "C:\\Users\\junio\\Downloads\\Exercicios.xlsx"
Exercicio <- read_excel(df)
Exercicio
# a )
is.data.frame(Exercicio)
# b )
Exercicio$Sexo <- factor(Exercicio$Sexo)
summary(Exercicio$Sexo)
# c )
mean(Exercicio$Idade)