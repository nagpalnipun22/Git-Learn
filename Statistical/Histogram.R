#Histograms

#simple histogram
attach(cars)
hist(MSRP)

#we can have density instead of frequency
hist(MSRP, prob=T)          #statement - 1
hist(MSRP, freq = F)        #statement - 2
#both statement 1 and 2 are same

#to change the bands number we could use break option and tweak the code
#ofcourse we can change the intervals using ylim
hist(Cylinders, freq = T, ylim = c(0,250), breaks = 7)

#likewise same argument ca also be written as below

#defining breaks using loop for large data
hist(Cylinders, freq = T, ylim = c(0,250), breaks = seq(from=2, to=12, by=2))

#explicitly defining the breaks using c function
hist(Cylinders, freq = T, ylim = c(0,250), breaks = c(2,4,6,8,10,12), main='Cylinders')

#adding a density curve over this histogram
lines(density(Cylinders), col=2, lwd=3)



