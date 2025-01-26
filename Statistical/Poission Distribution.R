#Poisson Distribution
#where the binomial distribution can't be used because of the large sample size

?dpois

#keeping lambda = 7 and x = 4
dpois(x=4, lambda = 7)

#probability of getting x = 1 to 4
dpois(x=0:4, lambda = 7)

#probability of probability distribution function
ppois(q=4, lambda = 7, lower.tail = T)
