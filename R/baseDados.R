# Bases de dados: obtjetos que armazenam matrizes formados por vetores
#   bases de dados, listas

nomesDosAlunos  <-  c("João","Maria","José","Pedro","Ana")
sexo <- c("Masculino","Feminino","Masculino","Masculino","Feminino")
notaProva1 <- c(10,9,9.5,8,9)
notaProva2 <- c(9,9.5,10,9,8)
notaTotal <- notaProva1 + notaProva2

diarioDeNotas <- data.frame(nomesDosAlunos, sexo, notaProva1, notaProva2, notaTotal)

cat('O que é meu dataframe')
str(diarioDeNotas)

# Usando bases que vem com o R
mtcars <- mtcars

# Extraindo uma coluna/variável
mpg <- mtcars$mpg
cyl <- mtcars$cyl

# Construindo uma nova base de dados com as colunas selecionadas
mtcarsSelecao <- data.frame(mpg, cyl)

# Importando dados do Excel

library(readxl)
mtcarsExcel <- read_excel("data/mtcars.xlsx")
View(mtcars)