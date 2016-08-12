# source("C:/GitHub/practice/datascience/datacamp/intro_to_r/data_frames.r")

mtcars <- read.csv("C:/GitHub/practice/datascience/datacamp/intro_to_r/data/mtcars.csv")

#head(mtcars)
#str(mtcars)

terrestrial <- "Terrestrial planet"
gas_giant <- "Gas giant"

name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c(terrestrial, terrestrial, terrestrial,
          terrestrial, gas_giant, gas_giant, gas_giant, gas_giant)
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <- data.frame(name, type, diameter, rotation, rings)

str(planets_df)

mercury_diameter <- planets_df[1,3]
mars_data <- planets_df[4,]

first_five_diameters <- planets_df[1:5,"diameter"]

rings_vector <- planets_df$rings

planet_data_with_rings <- planets_df[rings_vector,]

planets_diameter_greater_than_earth <- subset(planets_df, diameter > 1)

positions <- order(planets_df$diameter)

sorted_planets <- planets_df[positions,]
