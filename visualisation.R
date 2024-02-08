library(tidyverse)

# here geom means geometrical shape used, geom_point is type of graph(scatter plot), mapping is the way 
# the variables will be mapped,its specifics are in the aes function, code inside aes function to manipulate 
# the points of graph, code outside to manipulate graph as a whole
ggplot(data=penguins2)+
  geom_point(mapping=aes(x=bill_length_mm, y=body_mass_g, color=species, size=species, shape = species), color = 'Green')
# above, color inside will aes will assign different color of each species while color outside will change color of all
# points to green, can be done to other dimensions like shape and size

#different use of genomes
ggplot(data=penguins2)+
  geom_smooth(mapping=aes(x=bill_length_mm, y=body_mass_g, linetype = species))+ #smooth is for a line graph, 
  #linetype is for different linetypes like dotted lines
  geom_point(mapping=aes(x=bill_length_mm, y=body_mass_g))


ggplot(data=penguins2)+
  geom_smooth(mapping=aes(x=bill_length_mm, y=body_mass_g, color=species))+
  geom_point(mapping=aes(x=bill_length_mm, y=body_mass_g, color=species))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity)) #a bar graph will count the rows by default and that will
  # tell how many diamonds have certain type of cut, fill is for color filling, here color is filled according to clarity

ggplot(data=penguins2, aes(x=bill_length_mm, y=body_mass_g, color= species))+ #differet syntax 
  geom_point() + # facet is used to show sub groups
  facet_wrap(~species) #only one variable


ggplot(data=penguins2, aes(x=bill_length_mm, y=body_mass_g, color=species))+
  geom_point() +
  facet_grid(sex~species) #for one or two variables

ggplot(data=penguins2, aes(x=bill_length_mm, y=body_mass_g, color=species))+
  geom_jitter() #to see more clearly
