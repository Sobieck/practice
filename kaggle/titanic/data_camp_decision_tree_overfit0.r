# source("c:/github/practice/kaggle/titanic/data_camp_decision_tree_overfit.r")

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

#overfit - minsplit is the number of observations in each leaf. 2 is obviously overfitting the data.
my_tree_three <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked,
                     data = train, method = "class", control = rpart.control(minsplit = 2, cp = 0))

# Visualize my_tree_three
fancyRpartPlot(my_tree_three)
