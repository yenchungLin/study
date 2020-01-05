install.packages("tidyverse")
library(tidyverse)
install.packages("rlang")
library(rlang)
install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)
search()

#閃亮亮鑽石資料
diamonds <- diamonds
diamonds <- ggplot2::diamonds
View(diamonds)

#觀察
str(diamonds)
dim(diamonds)
summary(diamonds)
unique(diamonds$cut)

#檢視類別變數的分布，使用長條圖bar chart
ggplot2(data = diamonds) + geom_bar(mapping = aes(x = cut),color = "pink",fill = "white")

#計算每個類別植有多少個觀察，使用count
diamonds %>% count(cut)
diamonds %>% count(clarity)
unique(diamonds$cut)
unique(diamonds$clarity)

#檢視連續變數，使用質方圖
ggplot(data = diamonds) +
  goem_histogram(mapping = aes(x = carat),
                 binwidth = 0.5,color = "red",fill = "white")
diamonds %>% count(cut_width(carat,0.5))
#修改binwidth
ggplot(data = diamonds) +
  goem_histogram(mapping = aes(x = carat),
                 binwidth = 2,color = "red",fill = "white")

#觀察分布組距的狀況，小於3克拉
smaller <- diamonds %>% filter(carat < 3)
View(smaller)
ggplot(data = smaller,mapping = aes(x = carat))+
  geom_histogram(binwidth = 0.1,
                 color = "red",fill = "white")

#觀察分布組距的狀況，大於3克拉
bigger <- diamonds %>% filter(carat > 3)
View(bigger)
ggplot(data = bigger,mapping = aes(x = carat))+
  geom_histogram(binwidth = 0.1,
                 color = "red",fill = "white")

#在同一張圖表內，觀察多個項目，使用geom_freqpolty()
ggplot(data = smaller,mapping = aes(x=carat,color = cut))+
  geom_freqpolty(binwidth = 0.1)
#改變向度、線條、顏色等
ggplot(data = smaller.mapping = aes(x,carat,color = clarity))+
  geom_freqpoly(binwidth = 0.1)
ggplot(data = smaller.mapping = aes(x,carat,color = cut))+
  geom_freqpoly(binwidth = 0.1)

#典型值的探討，高峰、低峰
ggplot(data = diamonds,mapping = aes(x = carat))+
  geom_histogram(binwidth = 0.01,
                 color = "red",fill = "white")
#發現問題！！！黑人問號？？？
#為何小於1克拉的鑽石數量尖峰點稍為偏右比稍為偏左的鑽石數量還要多？？
#為何大於3克拉的鑽石很少？？

#黃石國家公園的老忠實間歌泉，噴發的持續時間資料
View(faithful)
#群組現象的探討，cluster，subgroups
ggplot(data = faithful,mapping = aes(x = eruptions))+
  geom_histogram(binwidth = 0.25
                 color = "green",fill = "blue")
#噴發的時間似乎聚集為兩群？？
#短的噴發時間，大約為2分鐘嗎？？
#長的噴發時間，大約為4.5中嗎？？

#每個集群中的觀察彼此之間如何相似？？
#不同輯群中的觀察彼此之間有何不同？？
#你能如何解釋或描述那些集群哪？？
#為什麼那些集群的出現可能產生誤導呢？？


###異常值/離群值的探討，outliers
View(diamonds)
ggplot(diamonds)+
  geom_histogram(mapping = aes(x = y),binwidth = 0.5,
                 color = "red",fill = "while")
#x軸中，y值的值域很寬，不太尋常？？
#將y軸拉近檢視，使用coord_certesian()
ggplot(diamonds)+
  geom_histogram(mapping = aes(x = y),binwidth = 0.5,
                 color = "red",fill = "while")+
  coord_cartesian(ylim = c(0,100))
ggplot(diamonds)+
  geom_histogram(mapping = aes(x=y),binwidth = 0.5,
                 color = "red",fill = "while")+
  coord_cartesian(ylim = c(0,10))
#用dplyr將異常值得觀察取出來檢視
unusual <- diamonds %>% 
  filter(y <3|y>20) %>% 
  arrange(y)
View(unusual)

#鑽石的寬度不可能是0公釐，所以這個應該是錯誤資料。
#寬度超過32和59公釐，也不太可能，因為他的價錢只有不到幾時美元，所以也應該是錯誤資料。
#所以知識領域也是很重要的。
#思考：鑽石資料中x,y,z變數，哪個是長度、寬度、深度哪？
#思考：有多少鑽石是0.99克拉？有多少是1克拉？造成他們之間差異的因素可能是甚麼？

###缺失值得探討
#捨棄帶有異常值的整個資料列
diamonds2 <- diamonds %>% 
  filter(between(y,3,20))
View(diamonds2)
#but，其實這個做法不太妥當，因為並不是全部欄位的直接有問題。而且，若資料品質不佳，可能資料就刪光光了！！！
#使用捕NA缺失值的方法
diamonds3 <- diamonds3 %>% 
  mutate(y = ifalse(y<3|y>20,NA,y))
ggplot(data= diamonds3,mapping = aes(x=x,y=y))+
  geom_point(color="red")
#warning message:remove 9 rows containing missing
#(geom_point)

#把NA的資料移除後，使用na.rm=TRUE
ggplot(data= diamonds3,mapping = aes(x=x,y=y))+
  geom_point(na.rm = TRUE,color="red")


#檢視帶有缺失值得觀察與帶有紀錄值得觀察值之間的異同
#檢視雪妖航班(dep_time變數為缺失值)與未取消航班的預定起飛時間
install.packages("nucflights13")
library(nycflights13)
View(flights)
nycflight13::flights %>% 
  mutate(
    cancelled = is.na(dep_time),
    sched_hour = sched_dep_time%/%100,
    sched_min = sched_dep_time %%100,
    sched_dep_time = sched_hour+sched_min/60
  ) %>% 
  ggplot(mapping = aes(sched_dep_time))+
  geom_freqpoly(
    mapping = aes(color = cancelled),
    binwidth = 1/4
  )
#不好的圖表，因為航班數量差異太大
#取消航班的曲線變化不容易看出來

#變異程度：一個變數中的行為
#共變異程度：變異之間的行為
#檢視鑽石的間隔如何隨著品質而變動
#使用次數多邊圖來檢視
ggplot(data = diamonds,mapping = aes(x = price))+
  geom_freqpoly(mapping= aes(color.cut),binwidth= 500)
#but，其實是很難發現分悟之間的差異。因為，總數之間的差異非常大
ggplot(diamonds)+
  goem_bar(mapping = aes(x=cut),color = "red",fill = "white")
#不用總散來檢視，改用密度(density)
#密度，是經過標準化後的總數
#每個次數多邊形底下的面積為1
ggplot(data=diamonds,mapping = aes(x=xprice,y=..density..))+
  geom_freqpoly(mapping = aes(color = cut),binwidth = 500)
ggplot(data = diamonds,mapping = aes(x=cut,y = price))+
  geom_boxplot(color="purple",fill="yellow")

View(mpg)
ggplot(data=mpg,mapping = aes(x=class,y=hwy))+
  geom_boxplot(color = "purple",fill = "yellow")


##########################
#20191119
##########################
data(iris)
View(iris)
log.ir <- log(iris[,1:4])
View(log.ir)
