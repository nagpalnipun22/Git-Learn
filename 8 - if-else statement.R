#If-else statement 

a <- 10
b <- 20
c <- a + b

#Example-1
if (a>b) {
  print('Statement is False')
} else {
  print('Statement is True')
}


#Example-2
if (10 > c) {
  print('Statement-1 is True')
} else if (20 > c) {
  print('Statement-2 is True')
} else {
  print('Statement-3 is True')
}

#Example-3
s1 <- 'Hello!'

if ('Hello!' %in% s1) {
  print('Key is present in the s1')
} else {
  print ('Key is absent')
}

#Example-4 (Nested If-else)

a <- 14

if (class(a) == 'numeric') {
  if (a<5) {
    print('Number is Smaller than 5')
  } else if (a<10) {
    print('Number is Smaller than 10')
  } else {
    print('Number is greater than 10')
  }
} else {
  print("It's a string")
}

#AND operator in if-else statement
a <- 200
b <- 33
c <- 500

if (a > b & c > a) {
  print("Both conditions are true")
}

#OR operator in if-else statement
a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("At least one of the conditions is true")
}