
####Libraries used###
library(tidyverse)
library(janitor)

### Each person's "pullin in" code###
#train <- rio::import("/Users/erik/Box/Center for Student Analytics/The Data Scouts/Titanic Project/train.csv")


###Basic descriptors###

#Age
hist(train$Age,xlab = "Age", main = "Age of Passengers",breaks = 25)
summary(train$Age)
#Sex
tabyl(train,Sex)
#class
tabyl(train,Pclass)