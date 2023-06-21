library(tidyverse)
library(ggthemes)

ggplot(data.frame(x = c(-3, 3)), aes(x)) +
  stat_function(fun = dnorm, 
                xlim = c(-3,-1),
                geom = "area",
                fill = "#a4caeb") +
  stat_function(fun = dnorm, 
                size = 1,
                col = "black") +
  theme_economist_white() +
  theme(
    panel.background = element_rect("#f0ebd8"),
    plot.background = element_rect(fill = "#f0ebd8")
  ) +
  xlab("") +
  ylab("") +
  ylim(c(0, 0.75))
