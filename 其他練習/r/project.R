install.packages("gapminder")
library(gapminder)
#ggpolt2:使用 ggplot() 函數做資料映射、使用 geom_() 函數調整圖形種類、使用 + 連結不同的函數，堆疊圖層
install.packages("tidyverse")
install.packages("ggplot2")
library(gapminder) # data
library(ggplot2)   # plotting
install.packages("dplyr")
library(dplyr)     # data manipulations
install.packages("plotly")
library(plotly)
data<-read.csv("/Users/yulin/Documents/資訊類別/視覺化/期末專題/ks-projects.csv", header=T, sep=",")
View(data)
data$goal <- as.numeric(data$goal)
data$pledged <- as.numeric(data$pledged)
data_select <- select(data,main_category,starts_with("goal"),starts_with("pledged"))
View(data_select)
data_select %>%  
  group_by(main_category) %>%
  summarise(goal = sum(goal), pledge = sum(pledged),percentage = pledge/goal)
bar_plot <- plot_ly(data_select,x = ~main_category,y = ~goal,type = 'bar',name = 'goal') %>% 
  add_trace(y = ~pledged,name = 'pledge') %>% 
  layout(yaxis = list(title = 'dollars',barmode = 'group'))
bar_plot
library(plotly)

p <- data_select %>% 
  plot_ly() %>%
  add_trace(data_select,x = ~main_category, y = ~goal, type = 'bar', name = 'goal',
            text = data_select$goal,
            marker = list(color = 'rgb(255, 95, 95)',
                          line = list(color = 'rgb(255,95,95)', width = 0.5))) %>%
  add_trace(data_select,x = ~main_category, y = ~pledged, type = 'bar', name = 'pledge',
            text = data_select$pledged,
            marker = list(color = 'rgb(176, 176, 176)',
                          line = list(color = 'rgb(176, 176, 176)', width = 0.5))) %>%
  layout(title = "2009~2016 Category Goal and Pledge",
         barmode = 'group',
         xaxis = list(title = "Category"),
         yaxis = list(title = "US dollars"))

p
