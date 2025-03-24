# Data Frames

# Instalar Pacotes 
install.packages("readxl")
library(readxl)


# Encontrar o arquivo o Excel não pode estar aberto
file.choose()

# Salvar Rota Em uma Variável
df <- "C:\\Users\\junio\\OneDrive\\Imagens\\Pasta1_Excel.xlsx"

# Colocar a variavel criada dentro de uma função que vai ler a Tabela Excel
Dados <- read_excel(df)


# --------------

summary(Dados)
str(Dados)