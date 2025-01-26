#Syntax - tapply(X=dataset_nae,INDEX,FUN=function)

#example-1
#below function will calculate the mean of MSRP variable MAKE wise
attach(cars)
tapply(X=MSRP,INDEX=Make,FUN=mean, simplify = TRUE)

#the above same result can be obtained by the mean function
mean(MSRP[Make=="Acura"])

#subseting the data using the tapply function
#less efficient way to do this will be using the mean function
tapply(MSRP, list(Make, Type), mean, na.rm=TRUE)

#BY function in R does the same as the tapply function except that it returns the values in a vectors
a = by(MSRP, list(Make, Type), mean, na.rm=TRUE)
