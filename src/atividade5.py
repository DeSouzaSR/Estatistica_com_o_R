# A base de dados "habitoLeitura", disponível neste link, mostra os dados de
# uma pesquisa sobre os hábitos de leitura de uma determinada população. As
# variáveis selecionadas para esta atividade são:

#     GOSTALER: variável binária que indica se a pessoa gosta ou não de ler;
#     TIPOLIVRO: variável qualitativa que indica os tipos de livro que a pessoa costuma ler;
#     QTDE: variável quantitativa que indica o consumo anual de livros.


import pandas as pd

base = pd.read_excel("data/raw_data/habitoLeitura.xlsx")
print(base.head())

