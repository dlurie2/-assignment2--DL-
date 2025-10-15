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



