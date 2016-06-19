# read.table()


#big data speed up
initial <- read.table("data/something.csv", nrows = 100)
classes <- sapply(initial, class) #figures out the types and whatnot.
mySomething <- read.table("data/something.csv", colClasses = classes)
