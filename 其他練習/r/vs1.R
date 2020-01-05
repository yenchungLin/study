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
doc <- read.csv("/Users/yulin/Desktop/rent_df,csv",header = T,sep = ",")



##stingr(str_replace_all)
#將價格中的元刪掉，並轉成數值形式
rent_df$price <- str_replace_all(rent_df$price,",|元","")
rent_df$price <- as.numeric(rentdf$price)
View(rent_df)

#以斜線做分割，並取出房子用途(stingr(sapply))
rent_df$type <- sapply(str_split(rent_df$area,"/"),"[[",2)
View(rent_df)

#把坪的字去掉，轉成數值
rent_df$area <- str_replace_all(rent_df$area,"坪","")
rent_df$area <- as.numeric(rent_df$area)
View(rent_df)

#建立新的單位價格，並四捨五入(round)道整數位數
rent_df$unit_price <- rent$df$price / rent_df$area
rent_df$unit_price <- round(rent_df$unit_price)
View(rent_df)

#資料匯出
write.table(rent_df,file = "/Users/yulin/Desktop/rent_df1",sep",",row.names = F,na = "na", append = TRUE,col.names = FALSE)

#資料分析(dplyr)
#找台北市的資料(dplyr的filter過濾資料)
rent591_Taipei <- filter(rent_df,county == "台北市")
View(rent591_Taipei)

#把rent591裡面租金大於
rent591_Expensive <- filter(rentr_df,price >10000)
View(rent591_Expensive)

#
rent591_Tao(rent_df,type == "套房")
View(rent591_Tao)
#arrange:排序資料
rent591_Taipei_desc <- arrange(rent591_Taipei,desc(price))
View(rent591_Taipei_desc)

#把套房的資料以每坪租金低到高排列
rent591_Tao_price <- arrange(rent591_Tao,unit_price)
View(rent591_Tao_price)
#把套房依據縣市名作排序
rent591_Tap_county <- arrange((rent591_Tao ,county))
View(rent591_Tap_county)

#dplyr::group_by用某些資料進行排序
#dplyr::summarise用分類結果進行彙整
rent591_TG <- group_by(rent591_Taipei,town)

rent591_TGP <- summarise(rent591_TG,mean_price = mean(price))
View(rent591_TGP)

rent591_TGP_desc <- arrange(rent591_TGP,desc(mean_price))
View(rent591_TGP_desc)
#計算出台北套房的價錢
rent_taipei_Tao <- filter(rent591_Taipei,type == "套房")
View(rent591_Taipei_Tao)
#一行政區分類
rent591_TT_group <- group_by(rent591_Taipei_Tao,town)
View(rent591_TT_group)
#一行政區分類結果計算個貧均租金
rent591_TTG_price <- summarise(rent591_TT_group,mean_price = mean(price))
View(rent591_TTG_price)
#計算排列結果
rent591_TTGP <- arrange((rent591_TTG_price,desc(mean_price))
View(rent591_TTGP)












