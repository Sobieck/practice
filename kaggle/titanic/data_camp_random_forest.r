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

extractTitles <- function(data_set){

  vector_of_strings <- data_set$Name
  name_char <- as.character(vector_of_strings)
  data_set$title <- trimws(sapply(strsplit(name_char, split=','), function(x) (sapply(strsplit(x[2], split='.', fixed=TRUE), function(x) (x[1])))))

  data_set$title[data_set$title == "Dona"] <- "Miss"

  return (data_set)
}

cleanData <- function(data_set){
  #embarked has empty items. Assign "S" because it is common
  missing_embarked <- data_set$PassengerId[data_set$Embarked == ""]
  data_set$Embarked[missing_embarked] <- "S"

  # Factorize embarkment codes.
  data_set$Embarked <- factor(data_set$Embarked)

  #missing fare values -- IS NA
  missing_fare <- data_set[!complete.cases(data_set$Fare),]
  data_set$Fare[missing_fare$PassengerId] <- median(data_set$Fare, na.rm = TRUE)

  # add titles and family_size
  data_set <- extractTitles(data_set)
  data_set$title <- factor(data_set$title)

  data_set$family_size <- data_set$SibSp + data_set$Parch + 1


  # How to fill in missing Age values?
  # We make a prediction of a passengers Age using the other variables and a decision tree model.
  # This time you give method = "anova" since you are predicting a continuous variable.
  predicted_age <- rpart(Age ~ Pclass + Sex + SibSp + Parch + Fare + Embarked + title + family_size,
                         data = data_set[!is.na(data_set$Age),], method = "anova")
  data_set$Age[is.na(data_set$Age)] <- predict(predicted_age, data_set[is.na(data_set$Age),])

  return (data_set)
}

cleaned_data <- cleanData(all_data)
