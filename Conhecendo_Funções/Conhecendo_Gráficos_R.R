# Grafico tipo plot 'Pontos'

x <- 1:20 
y <- x^2

plot(x,y)

# Personalizando Gráficos 

plot(x, y,
     main = "Gráfico de y = x^2",
     xlab = "Eixo X",    # Titulo do eixo x
     ylab = "Eixo Y",    # Titulo do eixo y
     xlim = c(0, 100),   # Limite do eixo X: de 0 até 100
     ylim = c(0, 100),   # Limite do eixo Y: de 0 até 100
     col = "blue",       # Cor 
     pch = 19)           # Alterando os Pontos 




# Dividindo a janela em 2 linhas e 2 colunas (ou seja, 4 gráficos no total)
par(mfrow = c(2, 2))

# Gráfico 1
x <- 1:10
plot(x, x^1, main = "x^1")

# Gráfico 2
plot(x, x^2, main = "x^2")

# Gráfico 3
plot(x, x^3, main = "x^3")

# Gráfico 4
plot(x, x^4, main = "x^4")


# Histograma

x <- c(2,2,2,2,2,3,3,3,4,4,5,5,6)
hist(x)

# Grafico de Barras 

x <- c(42, 51, 59, 64, 76)
barplot(x)

# Boxplot

x <- c(160, 165, 168, 170, 172, 174, 180, 185, 190, 250)

boxplot(x)

# Gráfico de Setores (Gráfico de PIZZA)

x <- (1:7)
pie(x)