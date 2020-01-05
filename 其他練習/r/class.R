12+3*6
(43.43*2^4+1.23e3)/384.23
foo <- 23; ##<-跟＝億四差不多
foo
sum(1:10) ##1加到10
sin(pi/2)
abs(-34) ##abs絕對值
exp(1) ##exp指數
median(1:5) ##1到5中的中位數
demo(graphics)
??demo
detach("demo")
class(c(TRUE,FALSE)) ##class判斷屬性
class(3)
class(c(TRUE,FALSE)) ##class判斷屬性
class(3)
class(3L) ##L是指定整數
class(2+3i)
class(sqrt(5:10))
class(sum(5:10))
class(1.3:5.7)
.Machine$double.xmax
.Machine$double.xmin
.Machine$double.min
c("Hello") ##建立函數
class(c)
class(c("Hello"))
gender <- factor(c("male","female","male"))
gender
levels(gender)
nlevels(gender)
as.integer(gender)
gender.char <- sample(c("female","male"),5000,replace = TRUE)
gender.facter <- as.factor(gender.char)
object.size(gender.char)
object.size(gender.facter)
list(AirPassengers)
show(AirPassengers)
view(AirPassengers)
list(CO2)
boxplot(AirPassengers)
boxplot(CO2$conc)
x <- CO2$conc
boxplot(x)
x <- CO2$conc[c(1:30)]
rm(x)
gc()
data(package = .packages(all.available = TRUE))
x <- CO2$conc[c(1:30)]
is.character(x)
is.numeric(x)
is.integer(x)
is.logical(x)
bigdata <- "巨量資料導論"
is.character(bigdata)
zz <- 20
yy <- 20L
is.numeric(zz)
is.numeric(yy)
is.integer(zz)
is.integer(yy)
as.integer(zz)
as.character(zz)
hist(AirPassengers,freq = T,col = 1:10,xlab = "bigdata",ylab = "time")
hist(AirPassengers,freq = F,col = 8:15)
table(AirPassengers)
colors(AirPassengers)
palette(rainbow(15))
palette(heat.colors(15))
palette(terrain.colors(15))
palette(topo.colors(15))
palette(cm.colors(15))
palette(grey.colors(15))
plot(CO2$conc[c(1:15)])
plot(CO2$conc[c(1:15)],type = "l")
plot(CO2$conc[c(1:15)],type = "o",col = "green",lwd = 2)
plot(CO2$conc[c(1:15)],type = "o",col = "green",lwd = 2,lty = 2,cex=3)
lines(airmiles,col = "red")

##統計量分析
mean(AirPassengers)
mean(AirPassengers,trim=0) #trim=0，資料刪除0個極端值
sd(x) #標準差
sd(x,na.rm = FALSE)
median(x,na.rm = FALSE)
range(x,na.rm = FALSE)
cv <- 100 * sd(x) / mean(x) ##變異係數

##週期性分析_時間序列趨勢
apts <- ts(AirPassengers,frequency = 12) #12 是一年有 12月
f <- decompose(apts) #季節性分解
print(f$figure)
plot(f$figure , type = "b", xaxt = "n",xlab="")
monthNames <- months(ISOdate(1949,1:12,1))
axis(1,at=1:12,labels = monthNames,las=2) #las=1水平 las=2垂直
plot(f)
palette(rainbow(15))
plot(f,col = 8)
##練習：週期性分析 時間序列
##ts(gm,frequency = 12,start = c(year,month)) gm資料來源
a <- ts(1:50,frequency = 12,start = c(2011,5))
print(a)

#貢獻度分析(帕雷托圖) LETTERS[1:8] 指的是大寫的ABCD
#way1
data()
conc <- CO2$conc
conc <- CO2$conc[c(1:10)]
cum_per <- cumsum(conc)/sum(conc)
par(mar=c(5,5,4,5)+0.1)
bar <- barplot(conc,ylab = "Total",col = "skyblue",col.axis = "skyblue",col.lab="skyblue")
mtext(LETTERS[1:10],side = 1,line = 3,at = bar,col = "black")
par(new=T)
plot(bar,cum_per,axes = F,xlab = "",ylab = "",col="red",type = "b")
axis(4,col = "red",col.ticks = "red",col.axis = "red")
mtext("Cum%",side=4,line=3,col="red")
title(main = "Pareto Chart")
#way2 (qcc)
install.packages("qcc")
library(qcc) #用library打開
conc <- CO2$conc[c(1:10)]
names(conc) <- LETTERS[1:10]
pareto.chart(conc,ylab = "total",ylab2 = "Cum%",main = "Pareto Chart")
#way3 (fdth)
install.packages("fdth")
library(fdth)
x <- rep(LETTERS[1:10],conc)
dc <- fdt_cat(x)
plot(dc,type = "pa",col = c("pink","yellow"),main = "Pareto Chart")

##相關性分析_相關係數
cor(CO2$conc,CO2$uptake)
cor(CO2$conc,CO2$uptake,method = "spearman") #注意是小寫
cor(CO2$conc,CO2$uptake,method = "kendall")
CO2
##練習
ChickWeight
cor(ChickWeight$weight,ChickWeight$Time)
cor(ChickWeight$weight,ChickWeight$Time,method = "spearman")
cor(ChickWeight$weight,ChickWeight$Time,method = "kendall")
