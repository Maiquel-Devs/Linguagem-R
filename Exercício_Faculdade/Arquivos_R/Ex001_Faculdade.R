# 1 )

mode('valor')
mode('string')
mode(2<4)
mode(sin)

# 2 )

4+9
4-5
4*5
4/5
4**2
4**5

# 3 )

num = 2.547
ceiling(num)  # Pra Cima (sig: Teto)
floor(num)    # Pra Baixo (sig: Chão)

# 4 )

signif(2.4785269,3) # singnif() significa 'significativos'
signif(84.5468, 2)
signif(5.8467, 1)

# 5 )

round(2.4785269, 3)
round(84.5468, 2)
round(5.8467, 1)

# 6 )

x <- 25
y <- 17
remove(y)  # ou rm()
print(x)

# 7 )

idade <- c(47, 18, NA, 30)
mean(idade, na.rm = T)
round(mean(idade, na.rm = T), 1)