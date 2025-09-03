library(ggplot2)

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

ggplot(data = mpg) + 
  aes(x = displ, y = hwy, fill  = drv) + 
  geom_point(alpha = 1, colour = 'red', shape = 24, size = 2) +
  labs(title = 'Autonomia (km/litro) por cilindradas do motor',
       subtitle = 'A autonomia diminui a medida que as cilindradas aumentam',
       caption = 'Fonte: ggplot2',
       x = 'Cilindradas do motor',
       y = 'Autonomia na autoestrada',
       fill = 'Tração') + 
  theme_bw() + 
  theme(plot.title = element_text(face = 'bold',
                                  size = 18,
                                  colour = 'red',
                                  hjust = 0.5,
                                  margin = margin(t=0.5, r=0.5, b=0.2, l=0.5, unit = 'cm'))
        
    
  )
