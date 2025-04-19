# 1 ) 

resultados <- c(
  5, 4, 6, 1, 2, 5, 3, 1, 3, 3,
  4, 4, 1, 5, 5, 6, 1, 2, 5, 1,
  3, 4, 5, 1, 1, 6, 6, 2, 1, 1,
  4, 4, 4, 3, 4, 3, 2, 2, 2, 3,
  6, 6, 3, 2, 4, 2, 6, 6, 2, 1
)

hist(resultados,
     breaks = seq(0.5, 6.5, by = 1),  
     col = "green",                  
     main = "Frequência dos Resultados do Lançamento de um Dado (50 vezes)",
     xlab = "Face do Dado",
     ylab = "Frequência",
     xaxt = "n",
     right = FALSE)

axis(1, at = 1:6)

# 2 ) 

chuvas <- c(
  144, 152, 159, 160,
  160, 151, 157, 146,
  154, 145, 151, 150,
  142, 146, 142, 141,
  141, 150, 143, 158
)

breaks <- seq(140, 165, by = 5)

hist(chuvas,
     breaks = breaks,
     col = "yellow",              
     main = "Índice Pluviométrico em Município (20 observações)",
     xlab = "Milímetros de Chuva",
     ylab = "Frequência",
     xlim = c(140, 165),          
     ylim = c(0, 8),              
     right = FALSE,              
     xaxt = "n")

axis(1, at = breaks)

# 3 ) 

tempm <- c(67, 72, 74, 62, 56, 66, 65, 59, 61, 69, 74, 69, 66, 68, 58, 64, 66, 57, 68, 62, 59, 73, 61, 61, 57, 58, 57, 67, 81, 79, 76)
temps <- c(91, 92, 93, 93, 87, 84, 80, 78, 75, 73, 81, 76, 77, 71, 71, 78, 67, 76, 68, 82, 64, 71, 81, 69, 63, 70, 77, 75, 76, 68)

par(mfrow = c(1, 2)) 

hist(tempm,
     col = "skyblue",
     main = "Temperaturas em Maio (NYC, 1973)",
     xlab = "Temperatura (°F)",
     ylab = "Frequência",
     xlim = c(55, 85),
     ylim = c(0, 8),
     breaks = seq(55, 85, by = 5),
     right = FALSE)

hist(temps,
     col = "salmon",
     main = "Temperaturas em Setembro (NYC, 1973)",
     xlab = "Temperatura (°F)",
     ylab = "Frequência",
     xlim = c(55, 95),
     ylim = c(0, 8),
     breaks = seq(60, 95, by = 5),
     right = FALSE)

# a ) 


tempm <- c(67, 72, 74, 62, 56, 66, 65, 59, 61, 69,
           74, 69, 66, 68, 58, 64, 66, 57, 68, 62,
           59, 73, 61, 61, 57, 58, 57, 67, 81, 79, 76)


hist(tempm,
     main = "Histograma das Temperaturas em Maio (NYC, 1973)",
     xlab = "Temperatura (°F)",
     ylab = "Frequência",
     col = "white",
     density = 30,                
     border = "black",            
     ylim = c(1, 10),             
     breaks = seq(55, 85, by = 5),
     right = FALSE)             

# b ) 

temps <- c(91, 92, 93, 93, 87, 84, 80, 78, 75, 73,
           81, 76, 77, 71, 71, 78, 67, 76, 68, 82,
           64, 71, 81, 69, 63, 70, 77, 75, 76, 68)

hist(temps,
     main = "Histograma das Temperaturas em Setembro (NYC, 1973)",
     xlab = "Temperatura (°F)",
     ylab = "Frequência",
     col = "violet",                
     breaks = seq(60, 95, by = 5),  
     right = FALSE)

# c ) 

tempm <- c(67, 72, 74, 62, 56, 66, 65, 59, 61, 69,
           74, 69, 66, 68, 58, 64, 66, 57, 68, 62,
           59, 73, 61, 61, 57, 58, 57, 67, 81, 79, 76)

tempm_celsius <- (tempm - 32) / 1.8

summary(tempm_celsius)

hist(tempm_celsius,
     main = "Histograma das Temperaturas em Maio (°C)",
     xlab = "Temperatura (°C)",
     ylab = "Frequência",
     col = "white",
     density = 25,                
     border = "darkblue",        
     ylim = c(0, 10),            
     xlim = c(12, 28),           
     breaks = seq(12, 28, by = 2), 
     right = FALSE)

# 4 ) 

# a ) 

x <- seq(0, 30, by = 1)

y <- 1.35 * x + 44.59

plot(x, y,
     type = "p",                
     col = "darkgreen",         
     pch = 16,                  
     cex = 1.2,                 
     lwd = 2,                   
     xlab = "Horas de Estudo",
     ylab = "Nota na Prova",
     main = "Relação entre Horas de Estudo e Nota",
     xlim = c(0, 30),           
     ylim = c(0, 100))

lines(x, y,
      col = "blue",             
      lwd = 2,                  
      lty = 1)  

# b ) 

# Segundos os dados há uma relação forte e linear entre o tempo 
# de estudo e a nota da prova. O modelo mostra que o esforço é 
# recompensado de forma consistente, embora exista um limite 
# prático para essa melhora, já que a nota não pode 
# ultrapassar 100.
