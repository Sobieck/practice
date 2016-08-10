# source("C:/GitHub/practice/datascience/datacamp/intro_to_r/factors.r")
male <- "Male"
female <- "Female"

gender_vector <- c(male, female, female, male, male)

factor_gender_vector <- factor(gender_vector)

# Animals - nominal - no order
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature - ordinal - order can be asserted
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector
