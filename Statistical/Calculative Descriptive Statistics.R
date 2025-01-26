#To calculate the mean, median and std deviation for the numeric and categorical variable
#we can also calculate the centre and spead of the variable

mean(Age, trim = 0.10)            #this will remove the bottom 10% and top 10% observation from the operation

median(Age)                       #calculate median

sd(Age)                           #calculate st deviation

var(Age)                          #calculate variance

sqrt(var(Age))                    #because st deviation is the sq root of the variance

range(Age)                        #produce the range of the variable

sum(Age)                          #to print the sum of variable

cor(Height, Age, method = 'spearman')   #to calculate the spearman correlation
