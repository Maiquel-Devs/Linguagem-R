import rpy2.robjects as robjects

# Lista 
dados = []

while True:
    coletar_dados = input("Digite um número (ou 'sair' para calcular a média): ")
    if coletar_dados.lower() == 'sair':
        break
    try:
        dados.append(float(coletar_dados))  # 'coletar_dados' vai ficar dentro da lista da variavel 'dados'
    except ValueError:
        print("Por favor, digite um número válido.")

# Converte a lista de Python para um vetor em R 
dados_r = robjects.FloatVector(dados)  

# media_r recebe a função r 'média'
media_r = robjects.r['mean']

# media_r calcula media dentro da lista dados_r
calcular_media = media_r(dados_r)[0]

print(f"A média calculada pelo R é: {calcular_media}")


# Resumo 
# Cria variáveis em Pyhon que recebe comandos em R 
# E depois faça iteragirem entre elas 
