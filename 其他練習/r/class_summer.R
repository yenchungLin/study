"hello world"
lucky_number <- 5566 #令lucky_number為5566
stupid_number = 87 #令stupid_number為87
print(lucky_number) #不一定要下print
rm(lucky_number) #移除lucky_number 清除下方框框按control+L
#查詢資料說明文件
?rm()
help(rm) 
#class查詢資料型態 分為:文字、數值、邏輯
movie_title = "Avergers: Endgame"
movie_rating = 8.7
class(movie_title) 
class(movie_rating)
higher_than_movie_rating <-movie_rating > 9
higher_than_movie_rating
#基本運算符號
5^2 #五的平方
5**2 #五的平方
5**0.5 #五的開根號
9%%5 #九除以五的餘數
9%/%5 #九除以五的商數
#文字符號：物件名稱、保留字不用雙引號
pi #保留字
movie_title = 'Avergers: Endgame' #單雙引號較沒區別 但可能誤認成‘
class(movie_title)
'i\'m loving it' #所以'要加上\'
#spirtf():印東西用法類似print %s：純文字 %.2f：浮點數兩位
jeremy_lin_height <- 191
jeremy_lin_weight <- 91
jeremy_lin_bmi <- jeremy_lin_weight/((jeremy_lin_height/100)**2)
jeremy_lin_bmi
sprintf("jeremy Lin's BMI is %.3f",jeremy_lin_bmi)
#邏輯運算符號：%in%：屬於 |:聯集 ！：非
8!=7
!(8!=7)
shaq_bmi <- 31
shaq_body_fat <- 0.15
shaq_bmi>30 & shaq_body_fat >0.25
shaq_bmi >30 | shaq_body_fat >0.25
#if 判斷式 三個以上用if else if else
movie_title = "Avergers: Endgame"
movie_rating = 8.7
if (movie_rating>8){
  sprintf("%s的評價是%s,推薦去看電影",movie_title,movie_rating)
}
if(movie_rating>8){
  sprintf("%s的評價如果是%s，就去電影院看",movie_title,movie_rating)
}else{
  sprintf("%s的評價如果是%s，就租dvd看",movie_title,movie_rating)
}
if(movie_rating>8){
  sprintf("%s的評價如果是%s，就去電影院看",movie_title,movie_rating)
}else if(movie_rating>7){
  sprintf("%s的評價如果是%s，就租dvd看",movie_title,movie_rating)
}else{
  sprintf("%s的評價如果是%s，就不看",movie_title,movie_rating)
}
# wile迴圈
i = 2
while (i<=100){
  print(i)
  i = i+2
}
i = 2
even_summation = 0
while (i<=100) {
  even_summation <- even_summation+i
  i <- i+2
}
even_summation
x = 55
y = 66
even_counter=0
while(x<=66){
  if (x%%2==0){
    even_counter = even_counter + 1
  }
  x = x+1
}
even_counter
#break:中斷 next：略過
x <- 56
i <- 1
divisors_counter <- 0
while (i <= x) {
  if (x %% i == 0) {
    msg <- sprintf("檢查第%s次",i)
    divisors_counter <- divisors_counter + 1
    print(msg)
  }
  if(divisors_counter>2){
    break
  }
  i <- i + 1
}
if (divisors_counter == 2) {
  ans <- sprintf("%s 是質數", x)
} else {
  ans <- sprintf("%s 不是質數", x)
}
ans

i <- 1
n_floors <- 10

while (i <= n_floors) {
  if (i == 4) {
    i <- i + 1
    next
  }
  print(sprintf("%s 樓", i))
  i <- i + 1
}
#使用 c() 函數來創建長度大於 1 的向量
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
class(avengers)
avengers
avengers_ratings <- c(8.1, 7.3, 8.5, 8.7)
avengers
avengers_ratings
#快速創建數值向量的函數 seq():序列 rep()：複製
seq(from = 11, to = 311)
seq(c[11:311])
seq(from = 11, to = 311,by = 2) #by = 2:加2的意思
seq(from = 11, to = 31 , length.out = 6) #length.out: 均勻分成幾等分
rep(5, times = 6) #times:出現次數
rep("5566", times = 5)
rep(TRUE, times = 4)
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
length(avengers) #計算有多少物件
avengers[1] #第一個物件
avengers[-1] #倒數第二個物件
avengers[-2]
avengers[length(avengers)] #最後一個物件
avengers[c(1, 3, 4)] #切割
avengers[-1] #刪除第二筆資料
avengers <- c("the avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
avengers
avengers[1] <- "The Avengers"
avengers
#增新資料
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War")
avengers
avengers <- c(avengers, "Avengers: Endgame")
avengers

avengers <- c("The Avengers", "Avengers: Age of Ultron")
avengers <- c(avengers, c("Avengers: Endgame","Avengers: Endgame"))
avengers #加兩個以上
##向量特性
#元素級別（element-wise）的運算、向量化計算
avengers_ratings <- c(8.1, 7.3, 8.5, 8.7)
avengers_ratings > 8 #是否有大於八分
#同樣的 class:資料做型別轉換、程式碼會自己作調整
endgame <- c(8.7, "Avengers: Endgame")
class(endgame)

endgame <- c(8.7, 8.7<8)
class(endgame)

endgame <- c(8.7, 8.7<8,8.7>8)
class(endgame)
#支援 logical 的資料篩選
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
avengers_ratings <- c(8.1, 7.3, 8.5, 8.7)
avengers[c(TRUE,FALSE,TRUE,TRUE)]
avengers_ratings > 8 #同上
avengers[avengers_ratings > 8]
avengers_ratings[avengers_ratings>8]#同上
avengers != "Avengers: Age of Ultron"
avengers[avengers != "Avengers: Age of Ultron"] #同上
# for 迴圈
iterable <- seq(from = 2, to = 100, by = 2)
for (i in iterable) {
  print(i)
}
#way1
summartion <- 0
for (i in iterable){
  summartion <- summartion +i
}
print(summartion)
#way2
sum(iterable)

even_counter <- 0
for (i in iterable){
  even_counter <- even_counter + 1
}
even_counter
length(iterable)
#combine
x <- 56
divisors <- c()
for (i in 1:56){
  if(x%%i==0){
    divisors <- c(divisors,i)
  }
} #把新的判斷加入向量中
x <- 56
divisors <- c()
for (i in 1:56){
  if(x%%i==0){
    divisors <- c(divisors,i)
  }
  if (divisors>2){
    break
  }
}
if (length(divisors)==2){
  msg <-sprintf("%s是質數",x)
}else{
  msg <- sprintf("%s不是質數",x)
}
msg
#從 random_numbers 中找出奇數
set.seed(87)
random_numbers <- sample(1:1000, size = 100, replace = FALSE)
# for
odds <- c()
for (i in random_numbers) {
  if (i %% 2 == 1) {
    odds <- c(odds, i)
  }
}
odds
# while
odds <- c()
i <- 1
while (i <= length(random_numbers)) {
  random_num <- random_numbers[i]
  if (random_num %% 2 == 1) {
    odds <- c(odds, random_num)
  }
  i <- i + 1
}
odds
#從介於 1 到 1000 的正整數中隨機抽樣，直到抽出 56 的倍數
sampled <- c()
while (TRUE) {
  sampled_num <- sample(1:1000, size = 1)
  sampled <- c(sampled, sampled_num)
  if (sampled_num %% 56 == 0) {
    break
  }
}
length(sampled)
sampled
#list
endgame <- list(
  "Avengers: Endgame",
  2019,
  8.7,
  c("Action", "Adventure", "Sci-Fi")
)#可以儲存到資料原有的型態、未命名的list
class(endgame)
endgame
class(endgame[[2]])
length(endgame)
for (i in endgame){
  print(length(i))
}
endgame <- list(
  movieTitle = "Avengers: Endgame",
  releaseYear = 2019,
  rating = 8.7,
  genre = c("Action", "Adventure", "Sci-Fi")
)#命名的list
class(endgame)
endgame
endgame$movieTitle
endgame[["movieTitle"]]
endgame[[4]]
#names:找到list中key
names(endgame)
#list加入新資料
endgame[["movieTime"]] <- 181
endgame
#list更新資料
endgame[["movieTime"]] <- "3hrimin"
endgame
#list刪除資料
endgame[["movieTime"]] <- NULL#空值
endgame
#factor
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
class(avengers)
avengers <- factor(avengers)
class(avengers)

rgbs <- factor(c("red", "green", "blue", "blue", "green", "green"))
rgbs #levels會排除掉重複的資料
as.numeric(rgbs) #不會像list變成na

temperatures <- factor(c("freezing", "cold", "cool", "warm", "hot"), ordered = TRUE, levels = c("freezing","cold","cool","warm","hot")) #factor支援有序文自
temperatures
temperatures[1] > temperatures[3]

#data.frame
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
ratings <- c(8.1, 7.3, 8.5, 8.7)
release_year <- c(2012, 2015, 2018, 2019)
is_good <- ratings > 8
avengers_df <- data.frame(title = avengers, rating = ratings, release_year, is_good)
avengers_df
class(avengers_df)
View(avengers_df) #View會在視窗中出現
?str
str(avengers_df) #發現預設處理文字的型態是factor
#加入參數 stringsAsFactors = FALSE 可以調整為文字向量
avengers_df <- data.frame(title = avengers, rating = ratings, release_year, is_good, stringsAsFactors = FALSE)
str(avengers_df)
#head():顯示前n列、tail():顯示後n列
cars
head(cars,n=3)
tail(cars,n=3)
#summary:顯示描述性統計資料
summary(cars)
#dim()：顯示維度
dim(cars)
#nrow()：顯示列數、ncol()：顯示欄數
nrow(cars)
ncol(cars)
#從資料框中選出欄位成為一個向量
avengers_df[["title"]][2]#[2]找第二筆資料
avengers_df$title[2]
avengers_df[2, "title"]
avengers_df[2, 1] #1是col的index 2是第二row
#篩選觀測值：指定列數
avengers_df[c(1, 3, 4), "rating"] #要地1 3 4 row、col選rating
avengers_df[-2,c("rating","release_year")] #要地1 3 4 row、col選rating release_year
#篩選觀測值：使用邏輯值向量
avengers_df[c(FALSE, FALSE, TRUE, TRUE), ] #回傳後兩部電影
avengers_df$release_year>2018
avengers_df$rating>8.5
avengers_df$title == "The Avengers"
avengers_df$title == "Avengers: Endgame"
avengers_df$title == "The Avengers"|avengers_df$title == "Avengers: Endgame"
avengers_df$title %in% c("The Avengers","Avengers: Endgame")
avengers_df[avengers_df$release_year >= 2018, ] 

#使用 matrix() 函數創建矩陣
my_mat <- matrix(1:6, nrow = 2)
class(my_mat)
my_mat

A <- matrix(1:4, nrow = 2)
B <- matrix(5:8, nrow = 2)
print(A * B)#矩陣相乘
print(A%*%B)#矩陣相乘
C <- matrix(1:6, nrow = 2)
D <- matrix(1:6, nrow = 2)
t(C) %*% D #t()：轉置

#使用 array() 函數創建 array:高維矩陣
my_arr <- array(1:24, dim = c(2, 3, 4)) #4個2*3的矩陣
my_arr
class(my_arr)
my_arr

#函數由四個元件組合而成:inputs、aeguments、body、outputs
#內建函數abs():絕對值
abs(-5566)
abs(5566)
#內建函數sqrt():平方根
sqrt(2)
sqrt(3)
#內建函數ceiling():無條件進位
ceiling(sqrt(2))
ceiling(sqrt(3))
#內建函數floor():無條件捨去
floor(sqrt(2))
#內建函數round():四捨五入
round(sqrt(2),digits = 2)
#內建函數exp():以e為底的指數函數
exp(1)
exp(2)
#內建函數log():以e為底的底數函數
log(1)
log(2)
#內建函數log10():以10為底的底數函數
log10(1)
log10(100)
#內建統計性函數mean()：平均數
mean(1:10)
#內建統計性函數sd():標準差
sd(1:10)
#內建統計性函數median():中位數
median(1:20)
#內建統計性函數range():回傳max跟min
range(1:1000)
#內建統計性函數sum():加總
sum(1:100)
#內建統計性函數:max()、min()
max(11:100)
min(11:1000)
#內建文字處理函數:unique():取獨一值
cities <- c("New York", "Boston", "Tokyo", "Kyoto", "Taipei")
countries <- c("United States", "United States", "Japan", "Japan", "Taiwan")
unique(cities)
unique(countries)
#內建文字處理函數:toupper():轉換為大寫、tolower()：轉換為小寫
tolower("Luke, use the Force!")
toupper("Luke, use the Force!")  
#內建文字處理函數:substr()：擷取部分字串
luke <- "Luke, use the Force!"
substr(luke, start = 1, stop = 4)
substr(luke, start = 11, stop = nchar(luke))
nchar(luke)#算單字有幾個字
#內建文字處理函數:grep():回傳指定特徵有出現的索引值
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
grep(pattern = "Avengers", avengers)
grep(pattern = "Endgame", avengers,ignore.case =TRUE )#忽略大小寫
#內建文字處理函數:sub():取代指定特徵
skywalker <- "Anakin Skywalker"
sub(pattern = "Anakin", replacement = "Luke", skywalker)
#內建文字處理函數:strsplit():依據指定特徵分割文字
avengers <- c("The Avengers", "Avengers: Age of Ultron", "Avengers: Infinity War", "Avengers: Endgame")
strsplit(avengers, split = " ")
strsplit(avengers, split = ":")
#內建文字處理函數:paste() 與 paste0():連接文字
paste("Avengers:", "Endgame")#連接會有空格
paste0("Avengers:", "Endgame")
#內建文字處理函數:trimws():消除前（leading）或後（trailing）的空白
luke <- "     Luke, use the Force!     "
trimws(luke)
trimws(luke, which = "left")
trimws(luke, which = "right")
#自訂函數 利用原本的自訂函數繼續利用
celsius_to_fahrenheit <- function(x) {
  return(x*9/5 + 32)
}
celsius_to_fahrenheit(20)

celsius_to_fahrenheit <- function(x) {
  f = x*9/5 + 32
  return(f)
}
celsius_to_fahrenheit(20)
#兩個以上輸入的函數
get_bmi <- function(height, weight) {
  return(weight / (height*0.01)**2)
}
get_bmi(191, 91)
#參數有預設值的函數
temperature_converter <- function(x, to_fahrenheit = TRUE) {
  if (to_fahrenheit) {
    return(x*9/5 + 32)
  } else {
    return((x - 32)*5/9)
  }
}
temperature_converter(20)
temperature_converter(68, to_fahrenheit = FALSE)

#參數有預設值的函數 to_fahrenheit=TRUE:表攝氏轉華氏為正確
temperature_converter <- function(x, to_fahrenheit = TRUE) {
  if (to_fahrenheit) {
    fa <-x*9/5 + 32
    return(fa)
  } else {
   cl <-(x - 32)*5/9
    return(cl)
  }
}
temperature_converter(20)
temperature_converter(68, to_fahrenheit = FALSE)

#多個輸出的函數
get_bmi_and_label <- function(height, weight) {
  bmi <- weight / (height/100)**2
  if (bmi > 30) {
    label <- "Obese"
  } else if (bmi < 18.5) {
    label <- "Underweight"
  } else if (bmi > 25) {
    label <- "Overweight"
  } else {
    label <- "Normal weight"
  }
  bmi_and_label <- list(
    bmi = bmi,
    bmi_label = label
  )
  return(bmi_and_label)
}
get_bmi_and_label(216, 147) # Shaquille O'Neal
get_bmi_and_label(203, 113) # LeBron James
get_bmi_and_label(191, 82) # Steve Nash
get_bmi_and_label(231, 91) # Manute Bol
lbj <- get_bmi_and_label(203, 113)
lbj
lbj$bmi

#全域（Global）與區域（Local）
# 區域物件僅可在區域中使用
get_sqrt <- function(x) {
  sqrt_x <- x**0.5 #local valuable
  #print(sqrt_x)
  return(sqrt_x)
}
get_sqrt(2)
#sqrt_x # Local object cannot be accessed in global

# 全域物件可以在全域以及區域中使用
x <- 2
sqrt_x <- x**0.5
sqrt_x # Global object can be accessed in global, of course
# 全域物件可以在全域以及區域中使用 入痊癒及區域有相同變數時，會先取用區域
x <- 2
sqrt_x <- x**0.5

get_sqrt <- function() {
  return(sqrt_x) # Global object can be accessed in local
}
get_sqrt()

#向量化函數
# 將一個 list 中的每個數字都平方
my_list <- list(
  11,
  12,
  13,
  14,
  15
)
my_list
my_list**2#list被去向量化
my_list_squared <- c()
for (i in my_list) {
  my_list_squared <- c(my_list_squared, i**2)
}
print(my_list_squared)
#lapply():list轉換成向量 輸出為list
get_squared <- function(x) {
  return(x**2)
}
lapply(my_list, FUN = get_squared) #lapply將list向量化

lapply(my_list, FUN = function(x) return(x**0.5))#簡寫、匿名函數
#sapply():向量轉換 輸出為向量
sapply(my_list, FUN = function(x) return(x**2))
#apply()：可指定到哪個維度
my_matrix <- matrix(1:12, nrow = 2)
my_matrix
apply(my_matrix, MARGIN = 1, FUN = sum)#row的總和 margin:印設的維度
apply(my_matrix, MARGIN = 2, FUN = sum)#column的總和
#mapply():有多個inputs 向量化
weights <- list(91, 82, 113, 147)
heights <- list(231, 191, 203, 216)
bmis <- mapply(FUN = function(h, w) return(w/(h*0.01)**2), heights, weights)
bmis
#遞迴
factorial <- function(n) {
  if (n == 1) {
    return(n)
  } else {
    return(n * factorial(n-1))
  }
}
factorial(1)
factorial(2)
factorial(3)

##資料輸入與輸出
#內建資料
data()
?iris
#輸入表格式資料(.txt、.csv、.xlsx、.json、database)
getwd()#查詢路徑
 #.txt以;做為分界
the_avengers <- "character;hero
Tony Stark;Iron Man
Steve Rogers;Captain America
Bruce Banner;Hulk
Thor;Thor
Natasha Romanoff;Black Widow
Clint Barton;Hawkeye"
writeLines(the_avengers, "the_avengers.txt") #輸出資料
the_avengers_df <- read.table("the_avengers.txt", sep = ";", header=TRUE) #read.table()匯入資料、header表示有沒有變數名稱、sep=";"表用分號做區隔
the_avengers_df
 #.csv以,做區隔
the_avengers <- "character,hero
Tony Stark,Iron Man
Steve Rogers,Captain America
Bruce Banner,Hulk
Thor,Thor
Natasha Romanoff,Black Widow
Clint Barton,Hawkeye"
writeLines(the_avengers, "the_avengers.csv") #輸出資料
 the_avengers_df <- read.csv("the_avengers.csv", sep = ",", header=TRUE) #匯入資料
the_avengers_df
 #.xlsx:利用read_excel()
install.packages("readxl") #安裝套件
library(readxl) #開啟readxl
the_avengers_df <- read_excel("/Users/yulin/Downloads/the_avengers.xlsx")
the_avengers_df
 #.json:利用fromJSON
the_avengers <- "[
    {\"character\": \"Tony Stark\", \"hero\": \"Iron Man\"},
    {\"character\": \"Steve Rogers\", \"hero\": \"Captain America\"},
    {\"character\": \"Bruce Banner\", \"hero\": \"Hulk\"},
    {\"character\": \"Thor\", \"hero\": \"Thor\"},
    {\"character\": \"Natasha Romanoff\", \"hero\": \"Black Widow\"},
    {\"character\": \"Clint Barto\", \"hero\": \"Hawkeye\"}
]
"
  #the_avengers <- '[
  #    {"character": "Tony Stark", "hero": "Iron Man"},
  #    {"character": "Steve Rogers", "hero": "Captain America"},
  #    {"character": "Bruce Banner", "hero": "Hulk"},
  #    {"character": "Thor", "hero": "Thor"},
  #    {"character": "Natasha Romanoff", "hero": "Black Widow"},
  #   {"character": "Clint Barto", "hero": "Hawkeye"}
  #]'
writeLines(the_avengers, "the_avengers.json")
install.packages("jsonlite")
library(jsonlite)
the_avengers_df <- fromJSON("the_avengers.json")
the_avengers_df
 #database ex.SOLite
install.packages("RSQLite")
library(RSQLite)
  #使用 DBI::dbWriteTable() 函數創建表格
library(DBI)
con <- dbConnect(RSQLite::SQLite(), ":memory:")
dbListTables(con)
the_avengers_df <- read.csv("the_avengers.csv", sep = ",", header=TRUE)
dbWriteTable(con, "the_avengers", the_avengers_df)
dbListTables(con)
  #使用 DBI::dbReadTable() 函數載入表格
the_avengers_from_db <- dbReadTable(con, "the_avengers") #用dbReadTable()匯入資料
the_avengers_from_db
  #使用 DBI::dbSendQuery() 搭配 DBI::dbFetch() 函數查詢表格
sql_query <- "SELECT * FROM the_avengers WHERE hero = 'Iron Man';"
res <- dbSendQuery(con, sql_query)
dbFetch(res) #dbFetch回傳查詢資料
dbClearResult(res) #函數清除查詢結果
dbDisconnect(con) #函數關閉資料庫連線

#輸入非表格式資料
 #非表格式的文字檔
endgame_summaries <- "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.
After the devastating events of Avengers: Infinity War (2018), the universe is in ruins due to the efforts of the Mad Titan, Thanos. With the help of remaining allies, the Avengers must assemble once more in order to undo Thanos's actions and undo the chaos to the universe, no matter what consequences may be in store, and no matter who they face...
The grave course of events set in motion by Thanos, that wiped out half the universe and fractured the Avengers ranks, compels the remaining Avengers to take one final stand in Marvel Studios' grand conclusion to twenty-two films - Avengers: Endgame.
After half of all life is snapped away by Thanos, the Avengers are left scattered and divided. Now with a way to reverse the damage, the Avengers and their allies must assemble once more and learn to put differences aside in order to work together and set things right. Along the way, the Avengers realize that sacrifices must be made as they prepare for the ultimate final showdown with Thanos, which will result in the heroes fighting the biggest battle they have ever faced."
writeLines(endgame_summaries, "endgame_summaries.txt")#創建資料並寫入電腦
endgame_summary_char <- readLines("endgame_summaries.txt") #利用readLines()匯入文字向量、長度同段落數
class(endgame_summary_char)
length(endgame_summary_char)
endgame_summary_char
  #.json
avengers_endgame <- "
{
    \"title\": \"Avengers: Endgame\",
    \"rating\": 8.7,
    \"genre\": [\"Action\", \"Adventure\", \"Sci-Fi\"]
}
"
  #avengers_endgame <- '{
     #"title": "Avengers: Endgame",
     #"rating": 8.7,
     #"genre": ["Action", "Adventure", "Sci-Fi"]
 #}'
writeLines(avengers_endgame, "avengers_endgame.json")
writeLines(avengers_endgame, "avengers_endgame.json")#創建資料並寫入電腦
library(jsonlite)
avengers_endgame <- fromJSON("avengers_endgame.json")
class(avengers_endgame)
length(avengers_endgame)
names(avengers_endgame)
avengers_endgame
#輸出表格式資料
 #.txt:使用 write.table()
write.table(iris, file = "iris.txt",sep = ";", row.names = FALSE) # 不輸出資料框的列索引 row.names = FALSE:不要row的index
 #.csv:使用 write.table()
write.table(iris, file = "iris.csv", sep = ",", row.names = FALSE) # 指定分隔符號為 ,
 #.json
library(jsonlite)
json_char <- toJSON(iris) #利用toJSON()
writeLines(json_char, "iris.json") #沒有row index的問題
#輸出非表格式資料
 #.json
avengers_endgame <- "
{
    \"title\": \"Avengers: Endgame\",
    \"rating\": 8.7,
    \"genre\": [\"Action\", \"Adventure\", \"Sci-Fi\"]
}
"json_str <- toJSON(avengers_endgame)
writeLines(json_str, "avengers_endgame_out.json")

#資料框的處理
csv_url <- "https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv"
chicago_bulls <- read.csv(csv_url, stringsAsFactors = FALSE) #不要讓資料變成因素
chicago_bulls
#dim()、nrow() 與 ncol() 檢視外觀
nrow(chicago_bulls) #nrow：有幾列
ncol(chicago_bulls) #col：有幾行
dim(chicago_bulls) #dim：有幾列、幾行
#summary() 描述性統計
summary(chicago_bulls)
#str() 詳細資訊
str(chicago_bulls)
#View()、head() 與 tail() 顯示資料框
head(chicago_bulls)
tail(chicago_bulls)
View(chicago_bulls)
#基礎資料框處理
 #解構資料框解構資料框
  #選擇:df名稱[, COLUMN_NAME] 或 df$COLUMN_NAME
chicago_bulls[, "Player"] #不可省略,
chicago_bulls$Player
chicago_bulls[,c("Play","Pos")] #選兩個以上的資料食用c()
  #篩選:df名稱[條件,] 或 df[ROW_INDICES, ]
chicago_bulls[chicago_bulls$Player == "Michael Jordan",]
chicago_bull[7, ]
  #選擇與篩選
chicago_bulls[chicago_bulls$Player == "Michael Jordan", "Player"]
chicago_bulls[7, "Player"] 
 #排序資料框:利用 order() 函數取得排序後的列索引
csv_url <- "https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv"
chicago_bulls <- read.csv(csv_url, stringsAsFactors = FALSE) #不要讓資料變成因素
ordered_indices <- order(chicago_bulls$No.)#背號由小到大排序
chicago_bulls[ordered_indices, ]#,後面放遞增或遞減
chicago_bulls[ordered_indices,]
 #新增變數
chicago_bulls$Wt_kg <- chicago_bulls$Wt * 0.45359
head(chicago_bulls)
 #摘要:針對欲摘要的變數使用敘述性統計函數
mean(chicago_bulls$Ht_cm)
 #分組摘要
#使用 dplyr 處理資料框,%>% 鏈結函數(使用 Ctrl-Shift-M 快捷鍵)
install.packages("dplyr") #安裝 dplyr 套件
library(dplyr)
 #解構資料框：選擇與篩選
  # Without %>% ,利用select
select(chicago_bulls, Player)
filter(select(chicago_bulls, Player), Player == "Michael Jordan") #利用filter選出某位球員
  # With %>%,先寫input再寫function name
chicago_bulls %>% 
  select(Player) %>% 
  filter(Player == "Michael Jordan") %>% 
  toupper()
 #排序資料框
chicago_bulls %>% 
  arrange(`No.`)
 #新增變數:mutate():函數新增變數
chicago_bulls %>% 
  mutate(Wt_kg = Wt * 0.45359)
 #摘要:summarise():函數摘要
chicago_bulls %>% 
  mutate(Wt_kg = Wt * 0.45359) %>% 
  summarise(Avg_Wt_kg = mean(Wt_kg))
 #分組摘要:group_by() 搭配 summarise() 函數分組摘要
chicago_bulls %>% 
  mutate(Wt_kg = Wt * 0.45359) %>% 
  group_by(Pos) %>% 
  summarise(Avg_Wt_kg = mean(Wt_kg))

#視覺化
 #gapminder
install.packages("gapminder")
library(gapminder)
 #ggpolt2:使用 ggplot() 函數做資料映射、使用 geom_() 函數調整圖形種類、使用 + 連結不同的函數，堆疊圖層
install.packages("ggplot2")
library(gapminder) # data
library(ggplot2)   # plotting
library(dplyr)     # data manipulations
  #觀察資料相關性的散佈圖（Scatter Plot）:使用 ggplot(aes(x, y)) + geom_point()
scatter_plot <- gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(color = "#FF7744",shape = 17) #要傳x、y軸的名稱(aes(x = ,y = ))，加上畫圖的方式(geom_point())
scatter_plot
  #觀察類別型資料的長條圖（Bar Plot）
   #長條高度為觀測值個數:使用 ggplot(aes(x)) + geom_bar()
count_bar_plot <- gapminder %>% 
  filter(year == 2007) %>%
  ggplot(aes(x = continent)) +
  geom_bar(fill = "#CCEEFF")
count_bar_plot
   #長條高度為摘要數值:使用 ggplot(aes(x, y)) + geom_bar(stat = "identity")
bar_plot <- gapminder %>% 
  filter(year == 2007) %>% 
  mutate(pop_numeric = as.numeric(pop)) %>%
  group_by(continent) %>% 
  summarise(ttl_pop = sum(pop_numeric)) %>% 
  ggplot(aes(x = continent, y = ttl_pop)) +
  geom_bar(stat = "identity",fill="#FFB7DD")
bar_plot
  #觀察資料散佈的直方圖（Histogram）：（連續型）使用 ggplot(aes(x)) + geom_histogram()
gapminder %>% 
  ggplot(aes(x = gdpPercap)) +
  geom_histogram(bins = 50,fill = "#9999FF") #有幾個bar
  #觀察數值變化趨勢的線圖（Line Plot）:使用 ggplot(aes(x, y)) + geom_line()
gapminder %>% 
  filter(country %in% c("Taiwan", "Japan", "China")) %>% 
  ggplot(aes(x = year, y = gdpPercap, color = country)) +
  geom_line()
gapminder %>% 
  filter(country %in% c("Taiwan", "Japan", "China")) %>% 
  ggplot(aes(x = year, y = gdpPercap, linetype = country)) +
  geom_line()
  #觀察不同類別資料散佈的盒鬚圖（Boxplot）：使用 ggplot(aes(x, y)) + geom_boxplot()
gapminder %>% 
  ggplot(aes(x = continent, y = gdpPercap, color = continent)) +
  geom_boxplot()
 #加入標籤：使用 ggtitle() + xlab() + ylab()
gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(color = "#CCCCFF") +
  ggtitle("Wealth vs. Health") +
  xlab("GDP Per Capita") +
  ylab("Life Expectancy")
 #加入註釋:使用 geom_text()
n_obs <- gapminder %>% 
  group_by(continent) %>% 
  summarise(nrows = n())

n_obs %>% 
  ggplot(aes(x = continent, y = nrows)) +
  geom_bar(stat = "identity",fill = c("#FFB7DD","#FFFFBB","#CCFF99","#AAFFEE","#CCCCFF")) +
  geom_text(aes(label = n_obs$nrows, y = n_obs$nrows), vjust = -2) + #vjust:調整高度 -:往上移動、＋：網下宜動
  scale_y_continuous(limits = c(0,650)) #改變y軸邊界

#加入中文字（macOS 使用者會遭遇的問題）：使用 theme(text = element_text(family = FONTS_SUPPORT_TC))
gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  ggtitle("財富與健康") +
  xlab("人均 GDP") +
  ylab("預期壽命") +
  theme(text = element_text(family = "Heiti TC Light"))

 #調整座標軸:使用 scale_x_continuous() 與 scale_y_continuous() 調整座標軸上下界與量尺
gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(color = "#FFB7DD") +
  scale_x_continuous(limits = c(0, 50000))

gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(color = "#BBFFEE") +
  scale_x_continuous(trans = "log10")

#在一個畫布上繪製多個子圖形:使用 facet_wrap(vars(CATEGORICAL_COLUMN))
gapminder %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  facet_wrap(vars(continent)) #依類別差成好幾張圖型

gapminder %>% 
  ggplot(aes(x = gdpPercap, fill = continent)) +
  geom_histogram() +
  facet_wrap(vars(continent),scales = "free") #依類別差成好幾張圖型

#使用 plotly 做一個 gapminder replica
install.packages("plotly")
library(plotly)
library("gapminder")
radius <- sqrt((gapminder$pop)/pi)

p <- gapminder %>%
  plot_ly(
    x = ~gdpPercap, 
    y = ~lifeExp, 
    size = ~pop, 
    color = ~continent, 
    frame = ~year, 
    text = ~country, 
    hoverinfo = "text",
    type = 'scatter',
    mode = 'markers',
    sizes = c(min(radius), max(radius))
  ) %>%
  layout(
    xaxis = list(
      type = "log"
    )
  )
p

#網頁爬蟲
 #JSON 格式資料:fromJSON() 函數一次就處理了兩個核心任務:對網站發出請求、將請求的回應解析為Array of JSONs、list(JSON)
install.packages("jsonlite")
library(jsonlite)
aqi_url <- "https://opendata.epa.gov.tw/ws/Data/AQI/?$format=json"
aqi <- fromJSON(aqi_url)
class(aqi)
 #HTML 格式資料:使用 rvest 套件
install.packages("rvest")
library(rvest)
  #read_html() 函數對網站發出請求
  #html_nodes(CSS = ) 定位 HTML 中指定的標記
  #html_text() 解析標記中的文字
html_doc <- read_html("https://www.imdb.com/title/tt4154796")
class(html_doc)
movie_title <- html_doc %>% 
  html_nodes(css = "h1") %>% 
  html_text() %>% 
  trimws()#刪除空白處
print(movie_title)

moving_rating <- html_doc %>% 
  html_nodes(css = "strong span") %>% 
  html_text() %>% 
  as.numeric()
moving_rating

movie_cast <- html_doc %>% 
  html_nodes(css = ".primary_photo+ td a") %>% 
  html_text() %>% 
  trimws() %>% 
  sub(pattern = "\n",replacement = "")
movie_cast

movie_genre <- html_doc %>% 
  html_nodes(css = ".subtext a+ a , .subtext a:nth-child(4)") %>% 
  html_text()
movie_genre

  #html_attr(ATTR) 解析標記中的屬性ex.圖片
html_doc %>% 
  html_nodes(css = ".poster img") %>% 
  html_attr("alt")

html_doc %>% 
  html_nodes(css = ".poster img") %>% 
  html_attr("src")
