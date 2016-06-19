# source("src/subsetting.r")

#basics
vectorOfChars <- function() {
  c("a", "b", "c", "c", "d", "a")
}

indexOne <- function() {
  x <- vectorOfChars()
  x[1]
}

indexTwo <- function() {
  x <- vectorOfChars()
  x[2]
}

firstFour <- function(){
  vectorOfChars()[1:4]
}

anythingGreaterThanA <- function() {
  x <- vectorOfChars()
  x[x > "a"]
}

isGreaterThanA <- function() {
  vectorOfChars() > "a"
}

itemsGreaterThanA <- function(vector) {
  u <- vector > "a"
  vector[u]
}

#lists
