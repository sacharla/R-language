######################################################
# Data Analytics with R
# Arjun Kadian
######################################################

######################################################
# R directory
######################################################

# Get working directory
getwd()

# Set working directory
dirpath<-"C:/Users/arjun/Desktop/R Bootcamp"
setwd(dirpath)

######################################################
# R Packages
######################################################

install.packages("readr")
library("readr")
detach("package:readr", unload = TRUE)

######################################################
# Variables
######################################################

this_is_a_num<-1
b="Assign a string to b"
assign("c",0.007)
d<-TRUE
#1a<-"Dont start variable name with a number"
#_a<-"Dont start variable name with a underscore"

# List all variables
ls()

# Remove specific variable
rm(d)

# Remove all variables
rm(list = ls())

######################################################
# Data Types
######################################################
# Numeric and integer
a<-1
b="Assign a string to b"
assign("c",0.007)
d<-TRUE

class(a)
class(b)
class(c)
class(d)

is.numeric(a)
is.integer(a)

a<-as.integer(1) 
is.integer(a)

# Character and factor
x<-"character"
x
y<-factor("factor")
y

class(x)
class(y)

nchar(x)
nchar(y) # Will give an error because y is a factor

# Date
only_date<-as.Date("2022-08-20")
only_date
as.numeric(only_date) # Will provide days since 1 Jan 1970

date_and_time=as.POSIXct("2022-08-20 10:10:10")
date_and_time
as.numeric(date_and_time) # Will provide seconds since 1 Jan 1970

class(only_date)
class(date_and_time)

# Logical
d<-TRUE
this_is_false<-FALSE
class(d)
class(this_is_false)

# Logical output from comparison operators
2==3
2<=3
2>=3
2!=3

rm(list = ls())
######################################################
# Vectors
######################################################
vector_of_nums<-c(1,2,3,4) 
vector_of_chars<-c("a","b","c","d")

# Access specific elements
vector_of_nums[1]
vector_of_chars[4]

# Perform operations on all elements of a vector
vector_of_nums*3
vector_of_nums-4
vector_of_nums/5
vector_of_nums^2
vector_of_nums+7

length(vector_of_nums)
nchar(vector_of_nums)

naming_elements<-c(One="a", Two="b", Last="c")
print(naming_elements)
naming_elements

naming_elements_again<-1:4
names(naming_elements_again)<- c("a","b","c","d")
print(naming_elements_again)
naming_elements_again

rm(list = ls())
######################################################
# Calling functions
######################################################

?mean

######################################################
# Missing Data
######################################################

i_am_na<-NA
i_am_null<-NULL

is.na(i_am_na)
is.na(i_am_null)

is.null(i_am_na)
is.null(i_am_null)

vector_of_na<-c(NA,NA,NA,NA) 
print(vector_of_na)

vector_of_null<-c(NULL,NULL,NULL,NULL) 
print(vector_of_null)

rm(list = ls())
######################################################
# Advanced Data Structures
######################################################

# Data Frame

first_column<-1:5
second_column<-0:-4
third_column<-c("a","b","c","d","e")
the_dataframe<-data.frame(first_column,second_column,third_column)
the_dataframe

nrow(the_dataframe)
ncol(the_dataframe)
dim(the_dataframe)
names(the_dataframe)
rownames(the_dataframe)
head(the_dataframe)
tail(the_dataframe)
the_dataframe$second_column[1]
the_dataframe[1,2]

rm(list = ls())

# List

the_list<-list(1,"b",TRUE)
the_list

names(the_list[[1]])<-"First"
names(the_list[[2]])<-"Second"
names(the_list[[3]])<-"Third"

print(the_list)

rm(list = ls())

# Matrix

the_matrix<-matrix(1:10, nrow=5)
the_matrix

nrow(the_matrix)
ncol(the_matrix)
dim(the_matrix)

rm(list = ls())

######################################################
# Control Statements
######################################################

# Example code to determine if a number is even or odd
# using if-else
number = as.integer(readline(prompt="Enter a number: "))

if((number %% 2) == 0) {
  print(paste(number,"is Even"))
} else {
  print(paste(number,"is Odd"))
}

rm(list = ls())
######################################################
# Loops
######################################################

# For loop
for (i in 1:10){
  print(i)
}

# While loop
j<-10
while(j<=15) {
   j<-j+1
   print(j)
#   break
}

rm(list = ls())

######################################################
# R Built-in Data Sets
######################################################

# Provides a list of available datasets
data()

# Upload data into environment by specifying the 
# dataset
data(mtcars)
?mtcars

rownames(mtcars)

######################################################
# Writing and Saving Data from R 
######################################################

# Into an external file like CSV
write.csv(mtcars, "C:/Users/arjun/Desktop/R Bootcamp/mtcars.csv")

# Into an external Rdata file
save(mtcars, file = "C:/Users/arjun/Desktop/R Bootcamp/mtcars.Rdata")

######################################################
# Reading Data into R
######################################################

# From an external file like CSV

library("readr") 

read_mtcars<-read_csv("C:/Users/arjun/Desktop/R Bootcamp/mtcars.csv")

read_mtcars
rm(list = ls())

# From an external Rdata file
load("C:/Users/arjun/Desktop/R Bootcamp/mtcars.Rdata")

######################################################
# Visualization Through Graphs
######################################################

library("ggplot2")

# List all columns
names(mtcars)

# Histogram
hist(mtcars$mpg, main="mpg historgram", xlab="mpg")

# Boxplot
boxplot(mtcars$mpg)

# Scatterplot
plot(mpg~hp, data=mtcars)

# ggplot2 library
ggplot(data=mtcars)+geom_histogram(aes(x=mpg))
ggplot(data=mtcars)+geom_density(aes(x=mpg),fill="grey50")

######################################################
# Basic Statistics
######################################################
# Sum
sum(mtcars$mpg) 

# Mean
mean(mtcars$mpg) 

# Median
median(mtcars$mpg)

# Smallest value
min(mtcars$mpg)

# Largest value 
max(mtcars$mpg) 

# Percentage quantiles
quantile(mtcars$mpg) 

# The standard deviation
sd(mtcars$mpg) 

# Correlation
cor(mtcars$mpg, mtcars$hp) 

cor(mtcars$mpg, mtcars$wt)
plot(mtcars$wt, mtcars$mpg)

cor(mtcars$mpg, mtcars$v)
plot(mtcars$v, mtcars$mpg)

cor(mtcars$mpg, mtcars$cyl)
plot(mtcars$cyl, mtcars$mpg)

######################################################
# Linear Regressions
######################################################

# Use lm() function for linear modeling
Simple_linear_regression<- lm(mpg ~ hp, data=mtcars)
summary(Simple_linear_regression)

mpg = 30.09886 - 0.06823(hp)


Multiple_linear_regression<- lm(mpg ~ hp + vs + wt, data=mtcars)
summary(Multiple_linear_regression)

mpg = 30.09886 - 0.06823(hp) + 2.57622(vs)
