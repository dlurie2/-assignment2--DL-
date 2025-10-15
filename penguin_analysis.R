library(readr)
library(ggplot2)
library(dplyr)
library(tidyr)

setwd('/Users/charleswilmot/Documents/GitHub/assignment2-cw')

penguins <- read_csv("penguins.csv")

summary_stats <- penguins %>%
  group_by(species) %>%
  summarise(
    mean_body_mass = mean(body_mass_g, na.rm = TRUE),
    mean_flipper_length = mean(flipper_length_mm, na.rm = TRUE)
  )
write.csv(summary_stats, "summary_stats.csv", row.names = FALSE)

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Flipper Length vs. Body Mass by Species")
ggsave("flipper_vs_mass.png")
