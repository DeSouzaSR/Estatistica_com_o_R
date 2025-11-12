# Teste de diferença de proporções
# Montadora pretende comparar o potencial de mercado das regiões norte e sul. 
# Perguntou a 300 pessoas, em cada região, se tinham interesse em comprar um carro

# H0: a proporção de pessoas que respondeream sim é igual em ambas as regiões.
# H1: a proporção de pessoas que respondeream sim é diferente em ambas as regiões.

# Testes de frequências de duas proporções (duas amostras independentes)

# Verficar se podemos rejeitar a hipótese nula

import pandas as pd
import numpy as np
from statsmodels.stats.proportion import proportions_ztest
import statsmodels.api as sm

data = pd.read_excel("data/raw_data/automoveis.xlsx")

print(data.head())

norte = data[data["Regiao"] == "Norte"]["Resposta"]
sul = data[data["Regiao"] == "Sul"]["Resposta"]

successes = [norte.sum(), sul.sum()]  # número de sucessos em cada grupo
nobs = [len(norte), len(sul)]  # número de observações em cada grupo
stat, pval = proportions_ztest(successes, nobs)

print("Estatística z:", stat)
print("p-valor (bi-caudal):", pval)

alpha = 0.05  # nível de significância (ex: 5%)
if pval < alpha:
    print("Rejeita H0 → as proporções de interesse em comprar um carro são diferentes entre as regiões Norte e Sul.")
else:
    print("Não rejeita H0 → não há evidência de que as proporções de interesse em comprar um carro sejam diferentes entre as regiões Norte e Sul.")
# Intervalo de confiança para a diferença entre duas proporções
conf = 0.95
cm = sm.stats.proportion_confint(successes, nobs, alpha=1-conf, method='normal')
print("Intervalo de Confiança para a diferença entre as proporções:")
print((cm[0][0] - cm[1][1], cm[0][1] - cm[1][0]))

