#to print the 10 five msrp
MSRP[1:10]

#creating variable with msrp greater than 30000 as false or true
temp1 = MSRP > 30000
temp1[1:10]

#creating 0 and 1 instead of true and false
temp2 = as.numeric(MSRP > 35000)
temp2[1:10]

#creating a new variable based on multiple conditions
ExpensiveAudi = Make=="Audi" & MSRP>40000

#we can add the variable to another object column wise or row wise using cbind() and rbind() 
#performing cbind on expensiveaudi variable
newdata = cbind(CARS, ExpensiveAudi)

#to remove all the object in R workspace memory
rm(list=ls())

#to check the current working directory
getwd()

#to set new working directory
setwd("C:/Users/DELL/OneDrive/Documents")

#we can also store the WD by storing the path in an object
projectWD = "C:/Users/DELL/OneDrive/Documents"
setwd(projectWD)

