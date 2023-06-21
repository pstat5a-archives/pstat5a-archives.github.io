library(tidyverse)
library(gridExtra)

x <- rnorm(100, 5, 2)
y <- rnorm(100, x, 2) + 15

p1 <- data.frame(x, y) %>% ggplot(aes(x = x, y = y)) +
  geom_point() +
  ylim(c(-5, 40)) +
  theme_bw(base_size = 14) +
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_blank()
  ) +
  geom_smooth(method = "lm", formula = 'y ~ x') +
  ggtitle("Regression of Y on X")

p2 <- data.frame(x, y) %>% ggplot(aes(x = x, y = y)) +
  geom_point() +
  ylim(c(-5, 40)) +
  theme_bw(base_size = 14) +
  geom_smooth(method = "lm", formula = 'y ~ x') +
  ggtitle("Regression of Y on X")

p3 <- data.frame(x, y) %>% ggplot(aes(x = x, y = y)) +
  geom_point() +
  theme_bw(base_size = 14) +
  geom_smooth(method = "lm", formula = 'y ~ x') +
  ggtitle("Regression of Y on X")

grid.arrange(p1, p2, p3, ncol = 1)
