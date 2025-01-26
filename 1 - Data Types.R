#-------------------------------  Data Types in R   ----------------------------------#
#---------------------------------- 1] Vectors  --------------------------------------#

#list of all similar type of items ie, either numeric or character

a <- c('item1','item2','item3')
b <- c(1,2,3,4,6,5,7,9,8)

b1 <- 1:15                #we can have vectors from 1 to 15 defined like this
b1

b2 <- 1.5:5.5
b2

b3 <- 1.5:5.4             #we can make the last item skip like this
b3




#2] List - collection of many types of data types

fruits <- list('Banana','Kela','Orange','Peach')
fruits

#access the elements of the lists
fruits[1]
fruits[4]

#to change the element of the list
fruits[3] <- 'Carrot'
fruits

#print the length of the list data type
length(fruits)            #returns 4

#to check if an item in the list exist or not
'Orange' %in% fruits

#to add an item to the list
#after option tells R to add the item after the item at index=1
append(fruits, 'Apple', after = 1)

#remove an elements from the list
fruits <- fruits[-1]
fruits

#to print specific range of list
(fruits)[2:3]

#iterate a loop through the list
for (x in fruits) {
  print(x)
}

#join two list
#most common way is to use c() function

list1 <- list('yaar','kya')
list2 <- list('Hai','Yaar!')

list3 <- c(list1,list2)
list3


#-----------------------------------  2] Vectors  ----------------------------------#
# Vectors can be defined as the collection of objects (numeric or char).

#syntax (char)
vec = c('I','Love','R','Programming')

#print vector
print(vec)

#synax (numeric)
vec.n = c(4:7)

#print vec.n
print(vec.n)

#generating sequence number
#generates a sequence numers starting from 0 that goes to 100 in a multiples of 5
seq(from=0, to=100, by=5)

#generating repetitions
#generates Nipun Text 10 times
rep('Nipun', times=10)

#generates 1-3, 5 times
rep(1:3, times=5)

#nested rep and seq functions
rep(seq(from=10, to=100, by=10), times=5)

#arithmetic operations with vectors
a = c(1,2,3,4,5,6,7,8,9)
b = c(9,8,7,6,5,4,3,2,1)

c = a + b
print(c)

#to print specific variable
print(a[3])
print(a[c(4,7)])                      #prints 4th and 7th element
print(a[4:7])                         #prints from 4th to 7th element

#to print except a specific variable
print(a[-3])
print(a[-c(4,7)])                     #prints except the 4th and 7th element

#imposing a condition on vectors
b[b<=5]                               #prints the elements larger than or equal to 5



#------------------------------------ 3] Matrix --------------------------------------#
#nrows - defines the number of rows
#byrow - to tell R whether to fill mentioned observations row-wise or not
mat.r <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)
print(mat.r)

#this will have 2 rows which will be filled col-wise
mat.c<- matrix(c(1,2,3,4,5,6,7,8,9,10), nrow = 2, byrow = FALSE)
print(mat.c)

#extract or print specific part of the matrix (syntax - matrix[row,col])
mat.c[1,4]                            #prints the 4th observation of 1st row
mat.c[1,]                             #prints the entire 1st row
mat.c[c(2,1),3]                       #prints obs at row 2nd and 1st residing at 3rd col 

#arithmetic operations with matrices are similar to vectors
mat.r*10                              #multiply every element of mat.r by 10



#---------------------------------------  4] Arrays ------------------------------------#
#unlike other programming languages, in R, arrays can have infinite number of dimensions

#one-dimension array
vec <- c(1:36)            #It has has value of 1 to 24
vec

#multi-dimensional array
#syntax -> array(inputValues,dim = c(rowCount, colCount, dimensionCount))
#rowCount = number of rows
#colCount = number of columns
#dimensionCount = number of dimension


#Vectors can be supplied as the source for the arrays
#Vectors can also called as uni-dimensional arrays
#supplied vector or source should have the number of elements equal to the number of-
#elements mentioned in the array's dimension whether you supply a single list as source-
#or two different lists as source even of different length.

#defining an array
arr <- array(vec, dim = c(3,3,4))
arr
length(arr)                   #count elements of array 'arr'

#access array elements
arr[2,,2]       #2nd row, entire column, 2nd dimension
arr[3,3,1]      #3rd row, 3 column, 1st dimension
arr[,,1]        #entire 1st dimension

#to check if an element exists in the array
34 %in% arr
56 %in% arr

#to print the dimensions of an array
dim(arr)

#run a loop through the array to print every element in the array
for (x in arr) {
  print(x)
}


#-------------------------------  5] Data Frames  --------------------------------#

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

#to summarize the data frame
summary(Data_Frame)

#to access the columns of data frames (All three have same output)
Data_Frame[1]
Data_Frame[['Training']]
Data_Frame$Training

#to add a new row to the data frame
New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))
New_row_DF

#to add a new column to the data frame
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))
New_col_DF

#to remove a row and column
Data_Frame_New <- Data_Frame[-c(1), -c(1)]
Data_Frame_New

#to find out the dimension of data frame
ncol(Data_Frame)
nrow(Data_Frame)
dim(Data_Frame)


#to add two or more data frames with rbind function (ROW WISE)
Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame

#to add two or more data frames (COLUMN WISE)
Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1





#---------------------------------  6] Factor ---------------------------------------#

# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre

#to print the levels or distinct elements
levels(music_genre)

#to set the levels
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))
levels(music_genre)

#to print the length of factor
length(music_genre)

#to print the element of factor
music_genre[5]

#to change the element
music_genre[3] <- "Classic"     #Classic should be present in the original factor

#However there is a condition that if the levels option in the factor already has the item-
#then it won't produce any error if we try to change it that item

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Rap", "Other"))
music_genre[2] <- 'Rap'
music_genre[2]

for (x in music_genre) {
  print(x)
}


