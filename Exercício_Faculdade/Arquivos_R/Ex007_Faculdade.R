# 1)

peso <- c(42, 51, 59, 64, 76)

dias <- c("2 dias", "4 dias", "6 dias", "8 dias", "10 dias")

barplot(peso,
        names.arg = dias,
        ylim = c(0, 100),
        col = "skyblue",
        main = "Peso médio por idade",
        xlab = "Idade dos pintinhos (dias)",
        ylab = "Peso médio (gramas)")

# 2 ) 

peso <- c(42, 51, 59, 64, 76)

dias <- c("2 dias", "4 dias", "6 dias", "8 dias", "10 dias")

cores <- c("blue", "pink", "yellow", "green", "red")

barplot(peso,
        names.arg = dias,
        ylim = c(0, 100),
        col = cores,
        main = "Peso médio dos pintinhos por idade",
        xlab = "Idade dos pintinhos (dias)",
        ylab = "Peso médio (gramas)")

# 3 ) 

defeitos <- c("Linha ruidosa", "Linha aberta", "Alarme", "Não responde", "Não toca")
ocorrencias <- c(250, 110, 85, 45, 25)

barplot(ocorrencias,
        names.arg = defeitos,
        density = 80,
        angle = 120,
        main = "Ocorrência de defeitos no sistema telefônico",
        xlab = "Tipo de defeito",
        ylab = "Número de ocorrências",
        ylim = c(0, 300))

# 4 ) 

reserva <- c("A","A","A","A","A","A","A","A","A","A","B","B","B","B","B","B","B","B","B","B")

macacos <- c(22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16)

frutiferas <- c(25,26,40,30,10,20,35,8,35,28, 6,17,18,11,6,15,20,16,12,15)

# A ) 

boxplot(macacos ~ reserva,
        main = "Densidade populacional de macacos",
        xlab = "Reserva",
        ylab = "Número de macacos",
        ylim = c(0, 50),
        col = c("lightblue", "lightgreen"))

# B ) 

boxplot(frutiferas ~ reserva,
        main = "Densidade de árvores",
        xlab = "Reserva",
        ylab = "Número de árvores frutíferas",
        ylim = c(0, 50),
        col = c("orange", "darkseagreen"))

# C ) 

# RESERVA A 

# - Macacos: Apresenta uma população média/alta, com a maioria dos valores acima de 20, 
#   alguns até perto de 40.

# - Frutíferas: Também mostra uma quantidade média/alta de árvores frutíferas, com muitos 
#   valores acima de 25 e até 40.

# RESERVA B 

# Macacos: Em geral, tem menos macacos do que a reserva A. Apesar de um valor 
# atípico (outlier) muito alto (60), a maioria dos valores está abaixo de 20

# Frutíferas: Tem menos árvores frutíferas comparado à reserva A. A maioria dos 
#  valores está entre 10 e 20.

# CONCLUSÃO

# A Reserva A, que possui mais árvores frutíferas, também apresenta uma maior 
# densidade de macacos.

# A Reserva B tem menos árvores frutíferas e uma população menor de 
# macacos (com exceção de um possível outlier).

# De acordo com os dados apresentados, quanto mais árvores frutíferas possui 
# mais macacos permanece na região.