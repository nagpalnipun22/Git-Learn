#they are used to define the relationship between the two categorical variables

#example-1
temperatures <- c(22, 27, 26, 24, 23, 26, 28)

result <- barplot(temperatures, 
                  main = "Maximum Temperatures in a Week", 
                  xlab = "Degree Celsius",
                  ylab = "Day",
                  ylim = c(0,30),
                  names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
                  col = "grey"
)


class = read_excel(file.choose(), col_names = T)
attach(class)

#make a table of variable sex and age
table1 = table(Sex,Age)

#drawing a barplot 
barplot(table1,
        main = 'Sex vs Age',
        ylim = c(0,6),
        xlab = 'Age',
        ylab = 'Freq Count',
        col = c('red','green'),
        legend.text = T)

#creating clustered barplot because by default the R creates the stacked barplot
#this can be achieved using BESIDE option in barplot
barplot(table1,
        main = 'Sex vs Age',
        ylim = c(0,6),
        xlab = 'Age',
        ylab = 'Freq Count',
        col = c('red','green'),
        beside = T,
        las=1,
        legend.text = c('Female','Male'))


