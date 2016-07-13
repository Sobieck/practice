# source("c:/github/practice/kaggle/titanic/data_camp_random_forest.r")

library(rpart)
library(rattle)

# Import the training set: train
train_url <- "C:/GitHub/practice/kaggle/titanic/data/train.csv"
train_to_clean <- read.csv(train_url)

# Import the testing set: test
test_url <- "C:/GitHub/practice/kaggle/titanic/data/test.csv"
test_to_clean <-  read.csv(test_url)

#test didn't have a survived column
test_to_clean$Survived <- NA

all_data <- as.vector(rbind(train_to_clean, test_to_clean))

#embarked has empty items. Assign "S" because it is common
missing_embarked <- all_data$PassengerId[all_data$Embarked == ""]
all_data$Embarked[missing_embarked] <- "S"

# Factorize embarkment codes.
all_data$Embarked <- factor(all_data$Embarked)

#missing fare values -- IS NA
missing_fare <- all_data[!complete.cases(all_data$Fare),]
all_data$Fare[missing_fare$PassengerId] <- median(all_data$Fare, na.rm = TRUE)
