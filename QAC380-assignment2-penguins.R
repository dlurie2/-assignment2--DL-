#QAC 380 Individual Assignment 2

library(descr)
library(dplyr)
library(ggplot2)

#Load data
penguins <- read.csv("~/Documents/GitHub/assignment2-tl/penguins.csv")

#Summary statistics
summary(penguins)

#Frequency Distributions
freq(penguins$species)
freq(penguins$island)
freq(penguins$bill_length_mm)
freq(penguins$bill_depth_mm)
freq(penguins$flipper_length_mm)
freq(penguins$body_mass_g)
freq(penguins$sex)
freq(penguins$year)

#Correlation Matrix
penguin_subset
cor_matrix <- cor(penguins[,c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")])
cor_matrix

#Visualizations
ggplot(data=penguins)+
  stat_summary(aes(x=species, y=flipper_length_mm),
               fun=mean, geom= "bar")

