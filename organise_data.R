library(tidyverse)
penguins %>% 
  arrange(bill_length_mm) %>% #arrange data in ascending order
  arrange(-bill_length_mm) # - for descending order

penguins2 <- penguins %>% arrange(bill_length_mm)
penguins2

penguin3 <- penguins %>% 
  group_by(island) %>% # group the data together
  drop_na() %>% #drop null values
  summarize(mean_bill_lenght_mm = mean(bill_length_mm)) # summarize the data
penguin3k

penguins %>% 
  group_by(island, species) %>% 
  drop_na() %>% 
  summarize(mean_bill_lenght_mm = mean(bill_length_mm), max_b = max(bill_length_mm))

penguins %>% 
  filter(species == "Adelie") 
