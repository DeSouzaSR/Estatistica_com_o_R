import pandas as pd
from scipy.stats import ttest_1samp
import numpy as np
from scipy.stats import t

mercBolsa = pd.read_excel("data/raw_data/mercBolsa.xlsx")

usd = mercBolsa["USD"]

stat, p = ttest_1samp(usd, popmean=3930)
print("Estatística t:", stat)
print("p-valor (bi-caudal):", p)

# p-valor unicaudal (H1: média > 3930)
p_unicaudal = p / 2

if stat > 0:  # só faz sentido dividir quando t é positivo
    print("p-valor (unicaudal):", p_unicaudal)
else:
    print("p-valor (unicaudal):", 1 - p_unicaudal)

alpha = 0.05  # nível de significância (ex: 5%)

if (stat > 0) and (p_unicaudal < alpha):
    print("Rejeita H0 → média do dólar é maior que 3930.")
else:
    print("Não rejeita H0 → não há evidência de que o dólar seja maior que 3930.")


conf = 0.95
n = len(usd)
media = np.mean(usd)
s = np.std(usd, ddof=1)

t_crit = t.ppf((1+conf)/2, df=n-1)
erro = t_crit * s / np.sqrt(n)

print("Intervalo de Confiança:")
print(media - erro, media + erro)