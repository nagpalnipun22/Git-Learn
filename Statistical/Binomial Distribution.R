#p = probability
#n = number of trials

#so lets suppose a trial where the probability of an event is 1/6
#number of trials are 20

#we use dbinom function to calculate the binomial distribution
#dbinom returns the probablity density function(pdf) of the binomial distribution
dbinom(x=3, size = 20, prob = 1/6)
#where x is the number of occurrence of the event

#we can also calculate the probability for x = 1 to 3
dbinom(x=0:3, size = 20, prob = 1/6)

#calculating sum for the x=1 to 3
sum(dbinom(x=0:3, size = 20, prob = 1/6))

#pdinom calculates the cumulative density function(cdf) of the binomial distribution
pbinom(q=0:3, size = 20, prob = 1/6, lower.tail=T)
