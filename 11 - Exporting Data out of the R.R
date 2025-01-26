#To export a table out of the R we can use write.table
#syntax - write.table([dataset_name_to_be_exported], file='file_path', row.names=F, sep=',')
#by default R will export the first row as the column name to prevent that use row.names=F


#write.table function or command
write.table(Assign3, file = "C:/Users/DELL/Downloads/newR.txt", sep='\t')

#write.table and xls file
#row.name will eliminate the first serial number column to prevent the lag of column names
#we can also use write.csv to export CSV file
write.table(Assign3, file = "C:/Users/DELL/Downloads/newRx.csv", sep = ',', row.names = FALSE)

#write.table and tab delimited data
write.table(Assign3, file = "C:/Users/DELL/Downloads/newRx.txt", sep = '\t', row.names = FALSE)

#we can specify other delimiters in sep option like for space(' ').

#writexl package can help provide a function called write_xlsx helping in exporting a xlsx file
install.packages("writexl")
library(writexl)
#syntax write_xlsx(DatasetName, "DatasetLocation", row_names or col_name = true or false)