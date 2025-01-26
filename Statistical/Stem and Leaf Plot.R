#these are suitable for the smaller datasets and summarizing the distribution of numeric variables

class = read_excel(file.choose(), col_names = T)

#subseting dataset
female = Weight[Sex=='F']

#creating a stem and leaf plot
#scale argument can be used to define the scale 
stem(female, scale = 2)
