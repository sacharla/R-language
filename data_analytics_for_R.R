getwd()



#######################################################################################


this_is_a_NUM = 1
b = "Assign  a value"
assign("c", 0.007) ####this is where c is a variable which reflects the value of 0.007###
d <- TRUE


###ls is the function which informs all the variables###

ls()

rm(list = ls())



#####Class#########


a<-1
this_is_a_NUM = 1
b = "Assign  a value"
assign("c", 0.007) ####this is where c is a variable which reflects the value of 0.007###
d <- TRUE


#####################################classes of##############

class(a)
class(b)
class(C)
class(d)

a = as.integer(1)   ###You ned to specify that its an int before submitting since the data types are only of numeric, logical and character####
is.integer(a)
is.character(b)

x = "Character"
x
y = factor("Factor", "Factor2")  ###level the character is at###
y


nchar(x)    #####Number of characters/ digit value###


nchar(y)


####Date####
only_date = as.Date("2022-08-21")
only_date
as.numeric(only_date) ###No. of days passed since 1st Jan 1970###

date_and_time = as.POSIXct("2022-08-20 18:15:24")   ####date year. month, days, hours, minutes, seconds####
date_and_time
as.numeric(date_and_time)


class(only_date)
class(date_and_time)


2==3
2!=3

table<-c(one="a", two="b", three="c")
table
dim(table)   ###vectors are dimensionless hence NULL####

######or######

table_again = 1:4
names(table_again)=c("a","b","c","d")
table_again

#################################calling functions##########

?mean

i_am_na<- NA
i_am_null<- NULL

is.na(i_am_na)
is.na(i_am_null)   ###Logical zero is equal to false###

is.null(i_am_na)
is.null(i_am_null)


vector_of_na=c(NA,NA,NA,NA)
vector_of_na

vector_of_null=c(NULL,NULL,NULL,NULL)
vector_of_null

rm(list = ls())

##########################################################
# Advanced Data Structures  #
#############################################################

# Data frame

first_column = 1:7
second_column = 0:-6
third_column=c("a","b", "c", "d","e", "f", "g")
the_dataframe= data.frame(first_column, second_column, third_column)
the_dataframe



nrow(the_dataframe)
ncol(the_dataframe)
dim(the_dataframe)   ###number of rows and columns###
names(the_dataframe)
rownames(the_dataframe)
head(the_dataframe)
tail(the_dataframe)
the_dataframe$second_column
the_dataframe$third_column[2]
the_dataframe[1,2]
the_dataframe[1,3]

#############list##############

list1= list(1, "n", TRUE)
list1

names(list1[[1]])="first"
names(list1[[2]])="second"
names(list1[[3]])="third"


list1


rm(list=ls())




#############matrix#####
the_matrix<-matrix(1:10, nrow=5)
the_matrix

nrow(the_matrix)
ncol(the_matrix)
dim(the_matrix)

vector=c(1,1,2,3)


vector*3



###############################################
#control statement#
######################################################


##Code to determine if a number is even or odd
##USing if-else


number = as.integer(readline(prompt = "Enter a number:  "))

#prompt allows to print a value and the readline will allow to input a value (gets captured function)

#as.integer converts or stores the value as an integer

###Modulus %%    a reminder value after division by a number

if((number %% 2) == 0){
  print(paste(number, "is even"))

} else {
  print(paste(number, "is odd"))
}

##################################################
###loops
############################

#for loop

for (i in 1:10){
  print(i)
  
}

#while loop

j<-10
while (j<=15) {
  j<-j+1
  print(j)
  #break
}

install.packages("LoopDetectR")


#BUilt in data sets

data()


data(mtcars)
?mtcars

rownames(mtcars)
colnames(mtcars)


summary(mtcars)


#writing and saving data from R


# wrting into an external file like csv

write.csv(mtcars, "c:/Users/Srinidhi/Desktop/mtcars.csv")

#into external Rdata file
save(mtcars, file = "c:/Users/Srinidhi/Desktop/mtcars.Rdata")
save.image()

#read am external file like csv

library("readr")

read_mtcars = read.csv("c:/Users/Srinidhi/Desktop/mtcars.csv")
read_mtcars


#Load is to get a particular R data file

load("c:/Users/Srinidhi/Desktop/.Rdata")

###GGplot and histogram

install.packages("ggplot2")
library("ggplot2")

hist(mtcars$mpg, main= "mpg histogram", xlab = "mpg")


#boxplot

boxplot(mtcars$mpg)


#scatterplot  - relation between two different values

plot(mpg~hp, data=mtcars )
#####or#####
plot(mtcars$mpg~mtcars$hp)
plot(mtcars$mpg~mtcars$hp , main= "mpg relation with HP", xlab="hp", ylab="mpg")

###correlation between hp and mph is negative \


