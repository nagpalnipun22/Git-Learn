#Loops in R

#While Loop
i <- 1

while(i<=10) {
  print(i)
  i <- i + 1
}

#BREAK statement (While Loop)
#break statement will stop the loop even if the condition is true
i <- 1

#Example-1
while(i<=10) {
  print(i)
  i <- i + 1
  if (i==5) {
    break
  }
}

#Example-2
i <- 1

while (i<=10) {
  print(i)  
  if (i==5) {
    print('Value is 5') & break
  }
  i <- i + 1
}

#Example-3
i <- 1

while(i<10) {
  if (i==6){
    print('Yatzee!!')
  }
  else {
    print("Yatzee!! it's not a 6")
  }
  i <- i + 1
}

#FOR Loop

for (x in 1:10) {
  print(x)
}

fruits <- list('Banana','Kela','Cherry','Apple','Orange','Peach')

for (x in fruits) {
  print(x)
}

#BREAK statement (For Loop)
#break statement will stop the loop even if the condition is true

for (x in fruits) {
  if (x == 'Cherry') {
    print("Cherry Found!!!") & break
  }
  else {
    print('Shit! It is not a Cherry')
  }
}

#Nested For Loops
str1 <- list('Manpreet','Harpreet','Gunpreet')
str2 <- list('Kaur','Singh','Dandona')

for (x in str1) {
  for (y in str2) {
    print(paste(x,y))
  }
}


