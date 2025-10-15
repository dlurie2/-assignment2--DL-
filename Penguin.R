library(dplyr)

setwd("/Users/dlurie13/Documents/GitHub/-assignment2--DL-")
penguins <- read.csv("penguins.csv", header = TRUE)

#Descriptive Analysis

#Basic Summary
summary(penguins)

#Analysis by Species & Sex
penguins %>%
  group_by(species, sex) %>%
  summarise(
    avg_mass = mean(body_mass_g, na.rm = TRUE),
    avg_flipper = mean(flipper_length_mm, na.rm = TRUE),
    count = n()
  )

#Added Linear Regression
model <- lm(body_mass_g ~ flipper_length_mm, data = penguins)
summary(model)

#Regression of Mass on Flipper Length
library(ggplot2)
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "Regression of Body Mass on Flipper Length",
       x = "Flipper Length (mm)",
       y = "Body Mass (g)")
