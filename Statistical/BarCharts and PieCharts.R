#first of all we can create the table of the data for for which we want to create the barchart
table(Type)

count = table(Type)
count

#calculating percentage by dividing from the total number of observations
percent = table(Type)/428
percent

#simple barplot
barplot(percent, main = 'Bar Chart', xlab = 'Type', ylab = 'Percent')

#customizing barchart
#las=1 will rotate the axis headings correctly
#horiz command will rotate the barchart horizontally 
barplot(percent, main = 'Bar Chart', ylab = 'Type', xlab = 'Percent', las=1,horiz = TRUE)

#pie chart
pie(percent)

#customizing pie chart
pie(percent, main = "Type Percent")
box()                                 #to add box around the pie chart
