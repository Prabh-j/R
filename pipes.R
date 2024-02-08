library(dplyr)
data("ToothGrowth")

filtered <- filter(ToothGrowth, dose == 0.5)
arranged_data <- arrange(filtered, len)
View(arranged_data)

#this is nested code
arrange(filter(ToothGrowth, dose == 0.5))

# This is a pipe, make the code easier to read and modify
filtered_data <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)
