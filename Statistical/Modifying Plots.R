#Modifying the plots
#we will use scatterplot for the simplicity

library(readxl)
class = read_excel(file.choose(), col_names =T)
attach(class)

#cex.main changes the size of the main title
plot(Age, Height, main = "Sample Scatterplot", cex.main=0.75)

#cex.axis changes the size of the axis digits
plot(Age, Height, main = "Sample Scatterplot", cex.lab=0.75)

#cex.lab changes the size of the x and y axis titles
plot(Age, Height, main = "Sample Scatterplot", cex.axis=0.75)

#font.main changes the font type of the main title
plot(Age, Height, main = "Sample Scatterplot", font.main=2)

#font.lab changes the font type of the axis title
plot(Age, Height, main = "Sample Scatterplot", font.lab=2)

#font.axis changes the font type of the axis digits
plot(Age, Height, main = "Sample Scatterplot", font.axis=2)

#col.main changes the color of the main title
plot(Age, Height, main = "Sample Scatterplot", col.main='red')

#col.lab changes the color of the axis titles
plot(Age, Height, main = "Sample Scatterplot", col.lab='blue')

#col.axis changes the color of the axis digits
plot(Age, Height, main = "Sample Scatterplot", col.axis='green')

#to have customer character over the chart
plot(Age, Height, main = "Sample Scatterplot", pch='#')

#plotting the chart upon certain conditions
plot(Age[Sex=='M'], Height[Sex=='M'], pch = 'm', col='blue')

#we can add the same observations for the female without overwriting the existing plot
#for this we will use points statement
points(Age[Sex=='F'], Height[Sex=='F'], pch = 'f',col='red')

#we can divide the chart output window into parts for that we use
par(mfrow=c(1,2))

#now we specify the syntax for the 1st chart
plot(Age[Sex=='M'],
     Height[Sex=='M'],
     col='blue',
     xlab = 'Hieght',
     ylab = 'Age',
     main='Male Plot'
)

#now we specify the syntax for the 2nd chart
plot(Age[Sex=='F'],
     Height[Sex=='F'],
     col='red',
     xlab = 'Hieght',
     ylab = 'Age',
     main='Female Plot'
)

#to reset again to single chart layout
par(mfrow=c(1,1))

plot(Height, Age)

#to change the digits on the x and y axis
plot(Height, Age, axes = F)         #turn off the both the axis

#design the x-axis
axis(side = 1, at=c(52,60,68,76), labels = c('a','b','c','d'))

#design the y-axis
axis(side = 2, at=c(10,12,14,16,18), labels = c('v','w','x','y','z'), las=1)

#to enclose the chart into a box
box()

#adding text to the plot
#adj option will adjust the text at the starting if adj=0 and at the end if adj=1
plot(Age, Height)
text(x=12.5, y=67.5, label='empty', adj=1,cex=1, col=4, font=4)

#to draw a line stating mean of the Height variable
abline(h=mean(Height),col=2,lwd=2)

#adding text to the mean line
text(x=11, y=63.5, label='mean height',adj=0, cex=1, col=2, font=4)

#arrange the text at the axis instead into the plot
#side indicates which side it should be on side=1 (x-axis), side=2(y-axis), side=3(upper side)
mtext(text = 'age = 12', col = 2, font=4, side = 1)

#we can use any value between adj = 0 to 1 to place the text on the axis
mtext(text = 'age = 12', col = 2, font=4, side = 1, adj = 1)


#adding legends to the plot chart
plot(Age[Sex=='M'],
     Height[Sex=='M'],
     col=2,
     main = 'AGE vs HEIGHT Scatterplot',
     ylab = 'Height',
     xlab = 'Age',
     pch = 16
)

#to add additional data to the plot
points(Age[Sex=='F'],
       Height[Sex=='F'],
       col=3,
       pch=17)

#adding the final legends to the chart
legend(x=11,
       y=72,
       legend=c('Male','Female'),
       col = c(2,3),
       pch = c(16,17),
       #bty = 'n'               #this option removes box from the legends
)

#adding a spleen smooth line to the plot for male
lines(smooth.spline(Age[Sex=='M'],
                    Height[Sex=='M']),
      col=1,
      lwd=2
)


#adding a spleen smooth line to the plot for female
lines(smooth.spline(Age[Sex=='F'],
                    Height[Sex=='F']),
      col=2,
      lwd=2
)


#adding the final legends to the chart for lines
legend(x=11,
       y=72,
       legend=c('Male','Female'),
       col = c(2,3),
       lty = 1,                  #will be same as that of the line option
       #bty = 'n',               #this option removes box from the legends
       lwd = 3                   #width of the 
)
