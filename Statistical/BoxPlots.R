#BOXPLOT in R
#Boxplot in R is calculated as if we have set of observations like 10, 20, 30, 40, 50, 60, 70 and 80
#we have two middle values that are 40 and 50. So the median would be 45.
#now the left hand side observations in respect to the median are 10, 20, 30 and 40
#so the lower quartile will be the median of center most values which 20 and 30


vec = c(12,14,32,55,55,63,65,74,78,98)
quantile(vec, probs=c(0, 0.25, 0.5, 0.75, 1))


#the quartile function has 9 type hence we can provide type = number as argument
#but R will still calculate the quartile if not specified

#creating a boxplot
#ylim option will define the interval size
boxplot(vec, main = 'Vec BoxPlot', las=1, ylab='EMPTY', xlab='PERCENTILE', ylim=c(10,100))

#creating boxplot for two variables in the same graph
#below type of boxplot command will generate a graph msrp on x axis with type on the y axis
attach(cars)
boxplot(MSRP ~ Type)

#BoxPlots with two factors (stratified boxplots)
#first we will convert the vector into factor
msrp = MSRP

#below we have used to cut function to convert vector into factor and provide labels
Prange = cut(msrp, breaks = c(10000,40000,80000),
             labels = c('cheap','costly'))
Prange[1:20]            #print the observations from 1 to 100 using the factor created
levels(Prange)          #to check the distinct observations stored in the fac1 factor
class(Prange)           #to check the data type
is.factor(Prange)       #prints boolean (true or false) if the object is a factor or not

#now we want to visualize between Make and Type within each of the price rang strata
boxplot(msrp~Origin*Prange, ylab = 'Make', las=2, main = 'MSRP vs Origin by Price Range')
