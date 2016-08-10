# source("C:/GitHub/practice/datascience/datacamp/intotor.r")

matrix1 <- matrix(1:9, byrow = TRUE, nrow = 3)

new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

box_offices <- c(new_hope, empire_strikes, return_jedi)

star_wars_matrix <- matrix(box_offices, byrow = TRUE, nrow = 3)

region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles

worldwide_vector <- rowSums(star_wars_matrix)

all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)

total_revenue <- colSums(all_wars_matrix)
