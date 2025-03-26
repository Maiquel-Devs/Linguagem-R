# 1 )

1:5
5:1
seq(1,20,5)
# seq(20,1,5)
seq(20,1,-5)

# 2 ) 

rep(6, 8)
rep(c(2,3), 5)
rep(c(2,3,5), 5)
c(rep(2,4), rep(3,5))   # Está juntando todos os valres da repetição usando a função c
c(rep(1,5), rep(2,3), rep(3,5))

# 3 ) 

a <- 5:10
print(a)
a[3]
a[1:4]
a[c(1,4)]     # Se usar mais que 1 use a função c
a[a>7]
a[a<7]
a[c(-2,-3)]

# 4 )

b <- seq(1, 11, 2)
print(b)

matriz_b <- matrix(b,nrow = 3, ncol = 2, byrow = T)
print(matriz_b)

matriz_b[1,2]

summary(matriz_b)

# 5 )

c <- matrix(1:20, ncol = 4)
print(c)

d <- cbind(c, 4:8)
print(d)

d <- rbind(d, 1:5)
print(d)

d[3,2]

d[,3]

d[3,]

# 6 )

y <- array(1:16, c(4,2,2))
print(y)

y[2,2,2]

