
# Exercício ---------------------------------------------------------------

mtcars <- mtcars
quantile(x = mtcars$mpg, type = 1)
sd(mtcars$mpg) # Desvio padrão
sd(mtcars$mpg) ** 2 # Variância

tapply(mtcars$mpg, mtcars$am, sd)
