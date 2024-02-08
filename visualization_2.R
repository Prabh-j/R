library(tidyverse)
ggplot(data=penguins2, aes(x=bill_length_mm, y=body_mass_g, color=species))+
  geom_point() +
  labs(title = 'Size of different types of penguins.', subtitle = "Three species of penguins are compared", caption = "data is by me")+
  annotate("text", x=50, y=3500, label='The Gentos are the largest', color = 'green', fontface='bold', size=4.5,angle=30)
# labs are for labels outside the graph while annotate is for labels inside the graph
#in annotate, text is type of label, x and y are coordinates, label is label and rest is so

ggsave("species.png") #will save last plot
