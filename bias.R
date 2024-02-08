install.packages('Tmisc')
library(Tmisc)
data("quartet")
view(quartet)

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

install.packages('datasauRus')
library('datasauRus')
ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3) 


install.packages("SimDesign")
library(SimDesign)

a_sales <- c(150, 203, 137, 247, 116, 287)
p_sales <- c(200,300,150,250,150,300)
bias(a_sales, p_sales) #check for bias, should be near zero, if positive then actual data is more than predicted and vica versa
