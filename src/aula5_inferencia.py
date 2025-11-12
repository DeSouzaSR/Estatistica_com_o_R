"""
Problema de pesquisa
Será que a nota média antes da nova política era menor do que a nota média  
depois da nova política?

H0: a nota média antes da nova política era menor ou igual a nota média
depois da nova política.

Nível de significância = 1 - nível de confiança (90, 95 ou 99%)

p-value < nível de significância, rejeita a hipótese nula
p-value > nível de significância, não rejeita a hipótese

"""

import numpy as np
import pandas as pd
from scipy.stats import ttest_rel
import scipy.stats as stats

momento = np.repeat("Antes",7), np.repeat("Depois",7)
nota = np.array([6,5,6,9,6,8,7,
         8,10,7,9,10,9,9])
novaPolitica = pd.DataFrame({"momento": np.concatenate(momento), "nota": nota})

antes = novaPolitica[novaPolitica["momento"] == "Antes"]["nota"]
depois = novaPolitica[novaPolitica["momento"] == "Depois"]["nota"]

resultado = ttest_rel(antes, depois)
print("Estatística t:", resultado.statistic)
print("p-valor (bi-caudal):", resultado.pvalue) 
alpha = 0.05  # nível de significância (ex: 5%)
p_unicaudal = resultado.pvalue / 2
if resultado.statistic < 0:  # só faz sentido dividir quando t é negativo
    print("p-valor (unicaudal):", p_unicaudal)
    if p_unicaudal < alpha:
        print("Rejeita H0 → a nota média antes da nova política era menor do que a nota média depois da nova política.")
    else:
        print("Não rejeita H0 → não há evidência de que a nota média antes da nova política era menor do que a nota média depois da nova política.")
else:
    print("p-valor (unicaudal):", 1 - p_unicaudal)
    print("Não rejeita H0 → não há evidência de que a nota média antes da nova política era menor do que a nota média depois da nova política.")
print("Média antes:", np.mean(antes))
print("Média depois:", np.mean(depois))

# Intervalo de confiança da diferença das médias

conf = 0.95
n_antes = len(antes)
n_depois = len(depois)
media_antes = np.mean(antes)
media_depois = np.mean(depois)  
s_antes = np.std(antes, ddof=1)
s_depois = np.std(depois, ddof=1)
s_diff = np.sqrt((s_antes**2)/n_antes + (s_depois**2)/n_depois)
df = min(n_antes - 1, n_depois - 1)  #
t_crit = stats.t.ppf((1 + conf) / 2, df=df)
erro = t_crit * s_diff
print("Intervalo de Confiança da diferença das médias:")
print((media_antes - media_depois) - erro, (media_antes - media_depois) + erro)


