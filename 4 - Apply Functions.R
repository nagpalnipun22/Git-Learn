#Apply Function has the structure like apply(X=dataset_name,margin,function_name)
#where margin will decide the operation type and will have value = 1 (row) or 2 (column)
#only condition is that the entire dataset or object must CONTAIN NUMERIC VARIABLE ONLY
#also the 4th arguement can be given to avoid the missing values from dataset by na.rm=true


#example
#this function will create the mean of the numeric variables column wise
apply(X=new, MARGIN=2, FUN=mean)
new = cars[ ,c("MSRP","Invoice","Cylinders","Horsepower","Wheelbase")]

#to calculate the maximum value row wise
apply(new,1,sum)

#create a plot for the data set new
apply(new,2,plot,type='l',main='GRAPH', xlab='X-axis', ylab='Y-axis')

#make a plot of resulting observation of the apply function
plot(apply(new[1:10, ],2,sum), type='l',main='GRAPH', xlab='X-axis', ylab='Y-axis', pch=16, col='blue')
