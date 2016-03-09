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
  dim(matrixone())
}

#yeah first class functions!
matrixonefunctional <- function(func){
  func(matrixone())
}

usingfunctionalmat1 <- function(){
  matrixonefunctional(attributes)
}

initializewithitems <- function(){
  matrix(1:6, nrow = 2, ncol = 3)
}

anotherinitialize <- function(){
  m <- 1:10
  dim(m) <- c(2,5)
  m
}

columnbind <- function(){
  x <- 1:3
  y <- 10:12
  cbind(x, y)
}

rowbind <- function(){
  x <- 1:3
  y <- 10:12
  rbind(x, y)
}

alist <- function(){
  list(1,"a", T, 1 + 4i)
}

#factors - enums essentially
fact <- function(){
  factor(c("yes", "yes","no","yes"))
  ##unclass(factor) will show its underlying numeric values
}

changinglevel <- function(){
  factor(c("yes", "yes","no","yes"), levels = c("yes", "no"))
}

#missing values

avectorwithnaandnan <- function(){
  c(1,2,3,NA,12,3, NaN)
}

isna <- function(){
  is.na(avectorwithnaandnan())
}

isnan <- function(){
  is.nan(avectorwithnaandnan())
}

#data frame
aframe <- function() {
  data.frame(foo = 1:4, bar = c(T,F,T,F))
}

numberofrowsofframe <- function(x) {
  nrow(x())
}

numberofcolofframe <- function(x){
  ncol(x())
}
