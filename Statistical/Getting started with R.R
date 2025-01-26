
#to calculate the mean of a particular variable in the table
#mean(obj_name$var_name)

#second method for calling any dataset's variable will be directly by embedding variable-
#into the R memory by using attach(obj_name) which will bypass the declaration using dataset-
#name and using '$' sign

#now we can use the command mean(var_name) directly which is pro and con is the dataset-
#will remain in the R memory until we erase it using detach(obj_name) command.

#levels(var_name) is used to display the all type of records of a particular variable

#summary function is used to get descriptive statistics of the variables of datasets

x = c(0,1,0,1,1,0,0,1,1,0,1,0,1,0,1)
class(x)

#now can we convert this x obj into factor by 
x = as.factor(x)
class(x)

summary(x)

#now the summary of a factor will report the frequencies of the records
summary(cars)

#to calculate mean under a condition
#mean(age[gender=='female'])
mean(Type=='SUV')

#== means to check conditions or perform mathematical calculations
mean(MSRP)

#= is used for assigning values to the variables

#subseting data using filters
#FemData = sashelp.class[sex=='Female', ]
acura = CARS[Make=="Acura", ]
#above data will produce results with selected make only and all the column will be printed

#MaleData = sashelp.class[sex=='male', ]
dodge = CARS[Make=="Dodge", c('Make','Model')]
#above data will produce results with selected make only and make, model will be printed

#defining multiple conditions
new = CARS[Make=='Nissan' & MSRP<35000, ]