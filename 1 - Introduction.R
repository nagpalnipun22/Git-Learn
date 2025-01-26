# Introduction to R
# Case-Sensitive langauge 
# use up or down command to navigate between the last or mext command

#to define a variable
x = 10
y = 5
# second method
x <- 100
y <- 150
# third method (we can use period in between as well)
x.1 <- 10


# Legal variable names:
myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"


# Illegal variable names:
2myvar <- "John"
my-var <- "John"
my var <- "John"
_my_var <- "John"
my_v@ar <- "John"
TRUE <- "John"

#to perform an arithmetic operation
z = x + y

#to identify the data type
class(z)

#to print the variable use PRINT statement or simply type the variable and run both will work
print(z)

x <- 1L # integer
y <- 2 # numeric

# convert from integer to numeric:
a <- as.numeric(x)

# convert from numeric to integer:
b <- as.integer(y)

# print values of x and y
x
y

# print the class name of a and b
class(a)
class(b)

#to check what is stored in the memory
ls()

#remove object
#we can use this command -> rm([object_name])

#to remove all object from the workspace ---> rm(list=ls())

#to print number of rows and columns
#we can use dim function -> dim(object_name)

#we can use head() to print the first 6 rows and tail() to print the last 6 rows

#for subsetting the table or dataset we can square brackets
#obj_name[c(rows number separated by comma), column number(leave black to include all)]
#obj_name[(start_row:end_row), ]

#to display the column names of an object
#name(obj_name)

#attach() function - we don't have to write the object name again and again-
#instead we can use attach() function ad directly use the variables within-
#object

#Global and local variables
#global variables - defined outside a function
#local variables - defined inside a function

global <- "I'm a global variable"
rand <- function() {
  local <- "I'm a local variable"         #a local variable
  global2 <<- "I'm a global variable"     #global variable because it has two '<'
  global <<- 'I have changed the value of global variable'
  print(local)
  print(global2)
  print(global)
}

rand()

