# source("C:/GitHub/practice/datascience/datacamp/intro_to_r/factors.r")
male <- "Male"
female <- "Female"

gender_vector <- c(male, female, female, male, male)

factor_gender_vector <- factor(gender_vector)

# Animals - nominal - no order
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

low <- "Low"
med <- "Medium"
high <- "High"

# Temperature - ordinal - order can be asserted
temperature_vector <- c(high, low, high, low, med)
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c(low, med, high))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c(female, male)

summary(factor_survey_vector)


# you can make statements about ordinal data... like one is greater than the other. 
slow <- "slow"
medium <- "fast"
fast <- "insane"

speed_vector <- c(medium, slow, slow, medium, fast)

factor_speed_vector <- factor(speed_vector, order = TRUE, levels = c(slow, medium, fast))

item2 <- factor_speed_vector[2]
item5 <- factor_speed_vector[5]

item2 > item5
