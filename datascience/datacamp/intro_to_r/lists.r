# source("C:/GitHub/practice/datascience/datacamp/intro_to_r/lists.r")

my_vector <- 1:10

my_matrix <- matrix(1:9, ncol = 3)

my_list <- list(my_vector, my_matrix)

names(my_list) <- c("vec", "mat")

my_list2 <- list(vector = my_vector, matrix = my_matrix, first_list = my_list)

vector_from_list2 <- my_list2$first_list$vec

my_list2 <- c(my_list2, additional_value = 123)

str(my_list2)
