# source("C:/GitHub/practice/datascience/datacamp/intro_to_r/matrices.r")

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

non_us_all <- all_wars_matrix[,2]
non_us_mean <- mean(non_us_all)

non_us_first_two_movies <- all_wars_matrix[1:2,2]
non_us_first_two_mean <- mean(non_us_first_two_movies)

# five dollar ticket price. Figure out the total number of tickets sold

millions_of_tickets_sold_1 <- all_wars_matrix / 5

ticket_prices_matrix <- matrix(c(5.0,5.0,6.0,6.0,7.0,7.0), ncol = 2, byrow = TRUE)
colnames(ticket_prices_matrix) <- region
rownames(ticket_prices_matrix) <- titles

millions_of_tickets_sold_2 <- star_wars_matrix / ticket_prices_matrix

us_tickets_sold <- millions_of_tickets_sold_2[,1]

average_us_tickets <- mean(us_tickets_sold)
