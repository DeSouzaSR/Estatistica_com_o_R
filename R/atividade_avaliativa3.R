
library(readxl)
mercBolsa <- read_excel("data/raw_data/mercBolsa.xlsx")
View(mercBolsa)


# Questão 1 ---------------------------------------------------------------

mean(mercBolsa$IBOVclose)


# Questão 2 ---------------------------------------------------------------
library(Rcmdr)

