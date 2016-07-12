# source("c:/github/practice/kaggle/titanic/data_camp_walkthrough.r")

# Import the training set: train
train_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"
train <- read.csv(train_url)

# Import the testing set: test
test_url <- "http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"
test <-  read.csv(test_url)

#str(train)

# Survival rates in absolute numbersq
survived_table <- table(train$Survived)

# Survival rates in proportions
proportion_survived_table <- prop.table(survived_table)

# Two-way comparison: Sex and Survived
sex_survived_table <- table(train$Sex, train$Survived)

# Two-way comparison: row-wise proportions
prop_sex_survived_table <- prop.table(sex_survived_table, 1)

# Create the column child, and indicate whether child or no child
train$Child <- NA
train$Child[train$Age < 18] <- 1
train$Child[train$Age >= 18] <- 0

#to check train[c("Age","Child")]

prop_child_survived_table <- prop.table(table(train$Child, train$Survived), 1)

test$Survived <- 0
test$Survived[test$Sex == "female"] <- 1
# test[c("Sex","Survived")]
# write.csv(test[c("PassengerId","Survived")], file = "gender.csv", row.names=FALSE)
