# source("c:/github/practice/kaggle/titanic/data_camp_decision_tree_data_manipulation.r")

library(rpart)
library(rattle)

# Import the training set: train
train_url <- "C:/GitHub/practice/kaggle/titanic/data/train.csv"
train <- read.csv(train_url)

# Import the testing set: test
test_url <- "C:/GitHub/practice/kaggle/titanic/data/test.csv"
test <-  read.csv(test_url)

# inspect dataset
#str(train)

train_two <- train
train_two$family_size <- train_two$SibSp + train_two$Parch + 1

#check to see if sums look right
#family_size_table <- train_two[c("family_size","SibSp","Parch")]

family_size_tree <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked + family_size,
                      data = train_two, method = "class")

#fancyRpartPlot(family_size_tree)

## title prediction - fancy people will be saved
extractTitles <- function(data_set){

  vector_of_strings <- data_set$Name
  name_char <- as.character(vector_of_strings)
  data_set$title <- trimws(sapply(strsplit(name_char, split=','), function(x) (sapply(strsplit(x[2], split='.', fixed=TRUE), function(x) (x[1])))))

  return (data_set)
}


train_three <- train
train_three <- extractTitles(train_three)
#title_table <- train_three[c("title","Name")]

title_tree <- rpart(Survived ~ Pclass + Age + title + Fare,
                      data = train_three, method = "class")
#fancyRpartPlot(title_tree)

test_three <- test
test_three <- extractTitles(test_three)

#replace dona
test_three$title[test_three$title == "Dona"] <- "Miss"

prediction <- predict(title_tree, test_three, type = "class")

my_solution <- data.frame(PassengerId = test$PassengerId, Survived = prediction)

nrow(my_solution)

write.csv(my_solution, "solution_title.csv", row.names = FALSE)
