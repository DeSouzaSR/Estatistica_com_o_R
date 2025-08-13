

# Tipos de objetos mais comuns no R: vetores, fatores, matrizes, bases de dados, listas e funções 

# Vetores: objetos que podem conter números (inteiros, reais, e outros), textos ou valores lógicos
# Objeto com um elemento:
minhaCidade = "Linhares"
minhaCidade <- "Linhares" # os operadores "=" ou "<-" servem para atribuir elementos aos objetos
minhaAltura = 1.85
souProfessor = TRUE

# Objeto com vários elementos
sequenciaAlunos <- 1:5 # o operador ":" cria uma sequência
sequenciaAlunos = seq(1,10, by = 2) # a função "seq" também cria uma sequência, mas é possível indicar os passos
salaDeAula = c(101,201,301,401,501) # a função "c" (combinação) permite indicar os elementos que serão atribuídos ao objeto
nomesDosAlunos = c("João","Maria","José","Pedro","Ana")
# Não devemos mistrurar diferentes tipos de dados num mesmo objeto

print(nomesDosAlunos) # mostrar os elementos de um objeto no console
class(nomesDosAlunos) # mostra o tipo de dado do objeto
str(nomesDosAlunos) # mostra um resumo do objeto

# Cálculos com vetores
notaProva1 = c(10,9,9.5,8,9)
notaProva2 = c(9,9.5,10,9,8)
notaTotal = notaProva1 + notaProva2
notaTotal100 = notaTotal * 10

# Atribuindo nomes aos vetores
names(notaTotal100) = nomesDosAlunos
print(notaTotal100)

# Fatores: são objetos que definem variáveis categóricas
sexo = c("Masculino","Feminino","Masculino","Masculino","Feminino")
sexo = factor(sexo)
str(sexo)
table(sexo)

sexo = c("Masculino","Feminino","Masculino","Masculino","Feminino")
sexo = factor(x=sexo, levels = c("Masculino","Feminino"), labels = c("M","F"), ordered = TRUE)
table(sexo)
vetor1 <- seq(1, 5)

# Correção da atividade
# 1  
meuNome <- 'Sandro'

# 2
vetor1 <- seq(1,5)

# 3
vetor2 <- vetor1 * (-1)

# 4
vetor3 <- (vetor1 * vetor2) ^ 2



