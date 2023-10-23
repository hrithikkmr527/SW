install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
data("starwars")
glimpse(starwars)


starwars %>%
  count(species) %>%
  ggplot(aes(y = species, x = n)) +
  geom_col()