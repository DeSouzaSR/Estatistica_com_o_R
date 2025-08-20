library(ggplot2)
library(esquisse)

diamonds <- diamonds

# Grafico com esquisse

ggplot(diamonds) +
 aes(x = clarity, fill = cut) +
 geom_bar() +
 scale_fill_hue(direction = 1) +
 labs(x = "Pureza", 
 y = "Frequência", title = "Diamantes", subtitle = "Nível de pureza dos diamantes ", fill = "Corte") +
 theme_gray() +
 theme(plot.title = element_text(size = 18L, face = "bold", hjust = 0.5), plot.subtitle = element_text(size = 12L, 
 hjust = 0.5)) +
 facet_wrap(vars(cut))
