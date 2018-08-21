#session7_assignment_7.2
#1. Write a program to create barplots for all the categorical columns in mtcars. 
library(purrr)
library(tidyr)
library(ggplot2)
mtcars %>%
  keep(is.numeric) %>%
  gather()%>%
  ggplot(aes(value))+
  facet_wrap(~key, scales = "free")+
  geom_bar()


#2. Create a scatterplot matrix by gear types in mtcars dataset. 
library(ggplot2)
library(car)

scatterplotMatrix(~mpg+cyl+disp+hp+drat+wt+qsec+vs+am+carb|gear,
                  data=mtcars,
                  main="Scatterplot matrix by gear type")



#3. Write a program to create a plot density by class variable
library(purrr)
library(tidyr)
library(ggplot2)
mtcars %>%
  keep(is.numeric) %>%
  gather()%>%
  ggplot(aes(value))+
  facet_wrap(~key, scales = "free")+
  geom_density()

