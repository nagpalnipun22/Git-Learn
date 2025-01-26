#Calling a Function
#somewhat like SAS Macro

#Create a function and store it in myFunction obj
#function(variable) will have the variable that will be called through the function
myFunction <- function(fname){
  paste(fname,'Lawda')
}

#function calling statement
myFunction('Apaar')



#Multiple arguments
#we can provide as many as argument
myFunction2 <- function(fname,lname){
  paste(fname,lname)
}

#function calling statement
myFunction2('Apaar','Lawda')


#hardcoding or setting default values for the variables
my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")



#return function
add <- function(x) {
  return(10 * x)      #returns the value of arithmatic operation
}

add(28)



#Nested Functions

#two ways of creating a nested functions
#first - calling a function within a function
#second - write a function within a function

#first method
addition <- function(x,y) {       #we have written a function
  a <- x + y
  return(a)
}

#the call statement will start resolving the function from most inside function-
#and then after resolving the inner two addition functions their result become-
#the argument for the most outer most addition function
addition(addition(2,2),addition(3,3))

#second method
#inner function is defined in the outer function and inner function is just like-
#the local variable (can't be called from outside).

#Example-1 (Most Basic One)
outer <- function() {
  inner <- function() {
    print('Hello from here')
  }
  inner()
}

outer()       #Hence, this statement will work
inner()       #and this will not because we can't call the inner function directly


#Example-2 
#return statement returns something executing that particular block. So, in this-
#case, when the outerr function is called also runs the return(innerr) statement-
#which again trigger the innerr function where a msg statement is defined and -
#another return statement is defined with msg as argument resulting in returning-
#of msg string in the last.
outerr <- function() {
  innerr <- function() {
    msg <- 'Kuch Nhi Hai Kya Dekh Rha Hai?'
    return(msg)
  }
  return(innerr)
}

nested <- outerr()
nested()


#Example-3
#We can simply have multiple functions defined separately and their call statements-
#are defined into different functions. So by this, if we call one function, all other-
#functions get called automatically.
#functions are run in the order in which they are called.
f1 <- function(x) {
  print(x)
}

f2 <- function(y) {
  print(y)
  f1(10)                      #f1 call statement in f2
}

f3 <- function() {
  print('f3 runs smoothly')
  f2('f2 runs smoothly')      #f2 call statement in f3
}

f3()                          #f3 call statement



#Recursion Function (a function which call itself)
rec <- function(n) {
  if (n>0) {
    result = n + rec(n-1)     #here the function is again called
    print(result)             #doesn't reach here until the first condition is false
  }
  else {
    result = 0
    return(result)
  }
}

rec(10)
