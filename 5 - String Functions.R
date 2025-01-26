#String Function

a <- 'ssddsfdfddff fdf
fdf ffsd sdsdsd  sdsdd
sdsdsd sddssd sd sdd sdsdsd ds
sdsd d s ds dssdds sd sdds d'

#to count the number of characters in the string
nchar(a)

#to check presence of a character or a set of characters
grepl('ss',a)               #gives TRUE or FALSE



s1 <- "Hello!"
s2 <- "World"

#to join two strings
paste(s1,s2)

#to insert illegal characters in the string like putting quoted string in between a string
#we can use backslash in order to produce the output

ss <- "She said,"Fuck me hard baby", as if she couldn't control"    #produces error
sd <- "She said,\"Fuck me hard baby\", as if she couldn't control"
sd              #will also print the backslash in the output
cart(sd)        #for the we use cat function foe the right output

#%in% operator
#searches for the exact same string or number
'Hello!' %in% s1

#Paste Function (CAT function)  
a1 <- 'Red'
a2 <- 'Apple'

paste(a1,a2)
