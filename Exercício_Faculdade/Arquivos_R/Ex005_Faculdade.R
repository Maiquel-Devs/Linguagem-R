# 1 )

raiz_quadrada <- function(n) {
  resultado <- sqrt(n)
  return(resultado)
}

raiz_quadrada(49)

# 2 )

soma <- function(n, m=1) {
  soma <- n + m
  return(soma)
}

soma(23,5)
soma(22)

# 3 )

questao3 <- function(a,b) {
  res <- sqrt(a) - sqrt(b)
  return(res)
}


questao3(100,25)

# 4 )

jogar.dado <- function(x,n) {
  sample(x,n,replace = T)
}

dado <- c(1:6)
jogar.dado(dado,4)
jogar.dado(dado,8)
jogar.dado(dado,6)

# 5 )

pessoa_idade <- c(17,25,18,12,14,53,45,10,62,13,16,19)

idade <- function(pessoa_idade) {
  for (i in pessoa_idade) {
    if (i >= 18) {
      print('Maior')
    } else {
      print('Menor')
    }
  }
}

idade(pessoa_idade)

# 6 )

Area_Piramide <- function(b,h) {
  res <- (b*h)/2
  return(res)
}

Area_Piramide(5,2)

# 7 )

raizes <- function(a,b,c) {
  delta <- b**2 - 4*a*c
  if (delta < 0) {
    cat('Raizes Complexas')
  } else {
    raiz1 <- (-b - sqrt(delta)) / (2*a)
    raiz2 <- (-b + sqrt(delta)) / (2*a)
    
    cat('As raizes são:', raiz1, 'e', raiz2)
  }
}

raizes(1,7,6)

raizes(1,3,5)
