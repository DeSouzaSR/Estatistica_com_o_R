base <- esoph

# Identificando valor da linha 40, coluna 4
cat("Valor 40,4")
base[40,4]

# Subconjunto da base
sub_base <- base[c(2, 3, 4)]

# Subconjunto para base com número de casos maior que quatro
caso_maior_quatro <- subset(base, ncases > 4)
