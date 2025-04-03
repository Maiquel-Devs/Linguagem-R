# Condições IF e ELSE 

# Apenas uma Condição (só o IF)

if (5 == 5) print('Está Correto!')

# Duas Condições na mesma linha (IF e ELSE)

if (5 == 6) print('Está Correto!') else print('Não Está Correto!')

# IF e ELSE de forma organizada com uso de 'chaves'

if (5 == 6) {
  print('Está Correto!')
} else {
  print('Não Está Correto!')
}

# Repetições do comando FOR

for (i in 1:3) {
  print('Olá Mundo!')
}

# Repetições do comando WHILE

# Enquando for verdade execute a condição desejada 

contador <- 0

while (contador <= 10) {
  print(contador)
  contador <- contador + 1
}

# Funções (Criando Elas)

somar <- function(a,b) {
  c <- a + b
  return(c)
}

somar(1,5)