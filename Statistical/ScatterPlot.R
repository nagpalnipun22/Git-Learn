#Scatterplot
#it's vital to examine the relationship between the two numeric variables
#this plot uses the pearson's correlation to examine the strength of the linear relationship among variables

library(readxl)             #importing library
class = read_excel(file.choose(), col_names = T)
attach(class)

#pearson's correlation
cor(Height,Weight)

#producing a scatterplot
#different number yields different characters
#cex option can be used to change the size of the circles on the scatterplot
#pch can be used to change the plotting characters
plot(Age, Weight, las=1,main = "Age vs Sex Scatterplot", cex=0.75, pch=8, col='red')

#add linear regression line to plot (variables places will be interchanged)
abline(lm(Weight~Age), col='blue')

#to add non parametric lines to the chart
#lty can change the line type
#lwd can change the line width
lines(smooth.spline(Age, Height), lty=2, lwd=5)


