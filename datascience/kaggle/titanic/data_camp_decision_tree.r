# source("c:/github/practice/kaggle/titanic/data_camp_decision_tree.r")

library(rpart)
library(rattle)

# Import the training set: train
train_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"
train <- read.csv(train_url)

# Import the testing set: test
test_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"
test <-  read.csv(test_url)

# inspect dataset
str(train)

my_tree <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class")

#plot(my_tree)
#text(my_tree)
#fancyRpartPlot(my_tree)

prediction <- predict(my_tree, test, type = "class")

my_solution <- data.frame(PassengerId = test$PassengerId, Survived = prediction)

nrow(my_solution)

write.csv(my_solution, "solution.csv", row.names = FALSE)
