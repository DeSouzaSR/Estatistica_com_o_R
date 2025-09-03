library(ggplot2)
library(esquisse)

mpg <- mpg

ggplot(mpg) +
 aes(x = displ, y = hwy) +
 geom_point(colour = "#112446") +
 labs(x = "Cilindradas do motor", 
 y = "Consumo [mi/ga]", title = "Relação entre consumo e cilindradas do motor") +
 theme_minimal()
