
####Libraries used###
library(tidyverse)
library(ggplot2)
library(janitor)

### Path for Box Titanic Data ###
# "This should work on Windows machines for getting the data from box without having to uncomment stuff... It's
#   just an idea, you don't have to use it."    --- Hayden
titanic <- "Box/Center for Student Analytics/The Data Scouts/Titanic Project/train.csv"
pattern <- "(?<=(C[:][/])(User[s]{0,1})[/].{0,20}[/])(.*)(\\w+)"
my_home <- stringr::str_replace(path.expand("~"), pattern, titanic)

train <- rio::import(my_home)

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

# Hayden's graph, comparing age to fare by gender
ggplot(train, aes(x=Age, y=Fare, colour=Sex)) + geom_point(size=3)
