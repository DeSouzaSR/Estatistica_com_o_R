# Leitura da base de dados
meuBairro <- readxl::read_excel('data/raw_data/meuBairro.xlsx')

# Questão 1.1
# O que está em meuBairro[10,4]
meuBairro[10,4]

# Questão 1.2
qtrans <-  meuBairro[,5]

# Questão 1.3
alugada <- subset(meuBairro, TMORAR="Alugada") #Falso, por causa do operador "="

# Questão 1.4
meuBairro[20,c(2,3)]

# Questão 2
summary(meuBairro)
meuBairro$TMORAR <- factor(meuBairro$TMORAR)
summary(meuBairro)
class(meuBairro$TMORAR)

# Questão 3
meuBairro$PESSOAS * 10
