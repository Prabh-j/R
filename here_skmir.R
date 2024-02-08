install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("palmerpenguins")
library(palmerpenguins)
library(janitor)
library(here)
library(skimr)
library(dplyr)

skim_without_charts(penguins) #give a lot of data about data frames
glimpse(penguins) #give brief data about data frames

penguins %>%
  select(species) %>% #gives only species column
  select(-species) %>% #gives every columns except species
  rename(isaland_new=island) #used to rename columns
rename_with(penguins, tolower) #convert all columns names to lower or upper case
clean_names(penguins) #clean the names of all columns, lowering them, removing signs etc














