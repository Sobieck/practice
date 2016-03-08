# source("src/first.r")

myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
  x + rnorm(length(x))
}

avector <- function(){
  1:100
}

boolvector <- function(){
  c(T,F,T,F)
}

#coersion
charcoersionvector <- function(){
  c("a", TRUE)
}

explicitcoersion <- function(){
  x <- 0:6
  as.logical(x)
}

notcoersion <- function(){
  x <- c("a", "b", "c")
  as.numeric(x)
}

#matrices

matrixone <- function(){
  matrix(nrow = 2, ncol = 3)
}

matrixonedim <- function(){
  matrix <- matrixone()
  dim(matrix)
}
