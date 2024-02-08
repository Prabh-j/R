library(ggplot2)
library(tidyverse)
data("diamonds")
View(diamonds) #to view the table
head(diamonds) #to only see first 6 rows of table as a preview
str(diamonds) # gives the information about the table
mutate(diamonds, carat_1 = carat*100) #add new column to the data frame

as_tibble(diamonds) #to create a tibble, a copy of original data frame with ten rows and as many columns that can fit on the screen
readr_example()
