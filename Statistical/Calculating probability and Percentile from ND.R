#calculating probability, percentile and taking random samples from normal distribution

#we are using here a scenario where X is normally distributed and has a mean of 75 with a std dev of 5
#lower tail option means to calculate the probability for less than 70
#P(X>=75)
pnorm(q=70, mean = 75, sd=5, lower.tail = T)

#P(X>=85)
pnorm(q=70, mean = 75, sd=5, lower.tail = F)

#find the probability of 25th percentile
qnorm(p=0.25, mean = 75, sd=5, lower.tail = T)

#create the probability density function
x = seq(from=55, to=95, by=0.25)

#storing the pdf in the dens variable
dens = dnorm(x, mean = 75, sd=5)

#now, plot these pdf for all the x values onto a plot
plot(dens, type = 'l')

#we may add a vertical line to the mean = 75
abline(v=75)

