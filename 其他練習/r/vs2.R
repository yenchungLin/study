install.packages("httr")
library(httr)
install.packages("jsonlite")
library(jsonlite)
install.packages("xml2")
library(xml2)
install.packages("rvest")
library(rvest)
install.packages("stringr")
library(stringr)
install.packages("arules")
library(arules)
install.packages("dplyr")
library(dplyr)
install.packages("RSQLite")
library(RSQLite)
install.packages("ggplot2")
library(ggplot2)
install.packages("devtools")

#HW1
doc <- GET("https://udn.com/news/breaknews/1")
content(doc,"text")

df.json <- toJSON(content(doc,"text"))
df <- fromJSON(df.json)

rent_html <- read_html(df)
udn_time <- html_nodes(rent_html,".dt") %>% html_text()
udn_time
udn_view <- html_nodes(rent_html,".view") %>% html_text()
udn_view

rent_df <- data.frame(
  udn_time = udn_time,
  udn_view = as.numeric(udn_view)
)

df <- rent_df[order(rent_df$udn_view,rent_df$udn_time),]
View(df)

udn_bar_plot <- rent_df %>% 
  ggplot(aes(x = udn_time, y = udn_view)) +
  geom_bar(stat = "identity",fill="#FFB7DD")
udn_bar_plot

print("學號：06170130")
print("姓名：林妍均")


#HW2
doc <- GET("https://pansci.asia/hots/month")
content(doc,"text")

df.json <- toJSON(content(doc,"text"))
df <- fromJSON(df.json)
View(df)

rent_html <- read_html(df)
title <- html_nodes(rent_html,".title") %>% html_text()
title
viewer <- html_nodes(rent_html,"#ranking .last") %>% html_text
viewer
index <- html_nodes(rent_html,".rank") %>% html_text
index

if (rent_df$viewer >30000){
  a = 1
}
else{
  a = 2
}

rent_df <- data.frame(
  index = index,
  title = title,
  viewer = viewer,
  a = a
)


df <- rent_df[order(rent_df$viewer,rent_df$title,rent_df$index),]
View(df)






