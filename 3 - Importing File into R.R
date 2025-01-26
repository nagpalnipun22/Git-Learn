#importing a CSV file into R
data = read.csv(file.choose(), header = TRUE)

#importing using read.table command
data1 = read.table(file.choose(), header = TRUE, sep = ',' )

#importing delimited data
data3 = read.table(file.choose(), header = TRUE, sep = ',')

#importing a tab delimited data
data3 = read.table(file.choose(), header = TRUE, sep = '\t')

#importing excel files into the R system
#first of all we need to import 'readxl' package which has the function to import
library('readxl')

#Now we can use the function to import the excel files and store it an object
#we can use to enter a path directly to the argument 
obje <- read_excel("C:/users/DELL/Downloads/CARS.xlsx")


#importing using readxl built-in package
#for this to use go into file>import dataset>from xls
#note that this package can read both xls and xlsx as well
#after this a window will popup showing various option we could use browse option if the-
#targeted xls file is located on the system or we can use the URL option.
#Now, we have various option to modify the end result of the output data like to select-
#the sheet, to import selected rows, to skip any rows, to import first row as column name-
#to choose range, using NA option we can define to display the missing values (if they are-
#entered with any other character)
