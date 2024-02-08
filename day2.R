library(tidyverse)
library(lubridate)
today() #gives today's date
now() # gives todays name and time
mdy("January 20th, 2021") #change string to date format
ymd("2021-01-20") #does not matter intial format or order
ymd_hms("2021-01-20 20:11:59") # to convert time too
mdy_hm("01/20/2021 08:01") #same