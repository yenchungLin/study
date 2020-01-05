##class practice
#公里轉英里
marathon_km <- 42.195
miles <- marathon_km*0.62137
miles
#攝氏轉華氏
current_temp_c <- 26
current_temp_f <- (current_temp_c)*9/5+32
current_temp_f
#計算身高：191cm 體重：91kg 的bmi值
jeremy_lin_height <- 191
jeremy_lin_weight <- 91
jeremy_lin_bmi <- jeremy_lin_weight/((jeremy_lin_height/100)**2)
jeremy_lin_bmi
#what did ross geller say
ross_said <- "Let\'s put aside that you \"accidentally\" pick up my grand mother\'s ring."
ross_said
#判斷奇偶數
int <- 3
if (int%%2==0){
  sprintf("%s是偶數",int)
}else{
  sprintf("%s是奇數",int)
}
int <- 4
if (int%%2==0){
  sprintf("%s是偶數",int)
}else{
  sprintf("%s是奇數",int)
}
#印出林書豪的身高、體重、bmi
players_name <- "Jeremy Lin"
players_height <- 191
players_weight <- 91
players_bmi <- players_weight/((players_height/100)**2)
if(players_bmi>30){
  bmi_label <-"obese"
}else if(players_bmi<18.5){
  bmi_label <-"underweight"
}else if(players_bmi>25){
  bmi_label <- "overweight"
}else{
  bmi_label <- "normal"
}
sprintf("%s的bmi為%.2f，分類為%s",players_name,players_bmi,bmi_label)
#fizz-buzz
int <- 3
int <-5
int <- 15
int <-16
if (int%%3==0){
  sprintf("Fizz")
}else if (int%%5==0){
  sprintf("Buzz")
}else if (int%%15==0){
  sprintf("Fizz Buzz")
}else{
  sprintf("%s",int)
}
#找質數
x <- 89
i <- 1
divisors_counter <- 0
while (i <= x) {
  if (x %% i == 0) {
    divisors_counter <- divisors_counter + 1
    print(i)
  }
  i <- i + 1
}
if (divisors_counter == 2) {
  ans <- sprintf("%s 是質數", x)
} else {
  ans <- sprintf("%s 不是質數", x)
}
ans
#判斷介於 x 與 y 之間的質數
x <- 5
y <- 19

i <- x
prime_counter <- 0
while (i <= y) {
  divisor_counter <- 0
  j <- 1
  while (j <= i) {
    if (i %% j == 0) {
      divisor_counter <- divisor_counter + 1
    }
    if (divisor_counter > 2) {
      break
    }
    j <- j + 1
  }
  if (divisor_counter == 2) {
    prime_counter <- prime_counter + 1
  }
  i <- i + 1
}
msg <- sprintf("介於 %s 與 %s 之間的質數有 %s 個", x, y, prime_counter)
msg
#計算三位球員的 BMI
players <- c("Jeremy Lin", "Michael Jordan", "Shaquille O'Neal")
player_heights <- c(191, 198, 216)
player_weights <- c(91, 98, 148)
players_bmi<- player_weights/(player_heights/100)**2
sprintf("%s的BMI是%.2f",players,players_bmi)

#哪個球員的 BMI 超過 30
players <- c("Jeremy Lin", "Michael Jordan", "Shaquille O'Neal")
player_heights <- c(191, 198, 216)
player_weights <- c(91, 98, 148)
players_bmi<- player_weights/(player_heights/100)**2
over_weight_players <- players[players_bmi > 30]
over_weight_players
#從 random_numbers 中找出奇數
set.seed(87) #設定隨機性
random_numbers <- sample(1:1000, size = 100, replace = FALSE) #樣本從1~1000中選100個 replace:要不要重複試驗

odds <- random_numbers[random_numbers%%2==1]
odds
#for 迴圈判斷質因數
x <- 56
divisors <- c()
for (i in 1:56){
  if(x%%i==0){
    divisors <- c(divisors,i)
  }
} #把新的判斷加入向量中
if (length(divisors)==2){
  msg <- sprintf("%s是質數",x)
}else{
  msg <- sprintf("%s不是質數",x)
}
msg
x <- 89
divisors <- c()
for (i in 1:89){
  if (x%%i==0){
    divisors <- c(divisors,i)
  }
}
if (length(divisors)==2){
  msg <-sprintf("%s是質數",x)
}else{
  msg <- sprintf("%s不是質數",x)
}
msg
#判斷介於 x 與 y 之間的質數（包含 x 與 y 如果他們也是質數）
x <- 1
y <- 5

primes <- c()
for (i in x:y) {
  divisors <- c()
  for (j in 1:i) {
    if (i %% j == 0) {
      divisors <- c(divisors, j)
    }
  }
  if (length(divisors) == 2) {
    primes <- c(primes, i)
  }
}
length(primes)
primes
#投擲一個公正骰子，總共要投幾次才能得到三次 6 點？
dice <- 1:6
dice_rolls <- c()
while(TRUE){
  dice_roll <- sample(1:6, size = 1,replace = TRUE)
  dice_rolls <- c(dice_rolls, dice_sampled)
  if (sum(dice_sampled%%6==0)==3){
    break
   }
}

length(dice_rolls)
dice_rolls

#製作一個撲克牌向量
suits <- c("Spade", "Heart", "Diamond", "Club")
ranks <- c("Ace", 2:10, "Jack", "Queen", "King")
poker_card <- c()

for (s in suits) {
  for (r in ranks) {
    card <- sprintf("%s %s", s, r)
    poker_card <- c(poker_card, card)
  }
}
length(poker_card)
poker_card

#將 5 個球員的姓氏（last name）擷取出來並轉換成大寫
fav_players <- c("Steve Nash", "Paul Pierce", "Dirk Nowitzki", "Kevin Garnett", "Hakeem Olajuwon")
fav_players <- toupper(fav_players)
fav_players <-strsplit(fav_players, split = " ", fixed = FALSE, perl = FALSE, useBytes = FALSE)
ans <- c()
for (i in fav_players){
  ans <- print(i[2])
}
ans

#將三巨頭 Michael Jordan, Scottie Pippen 還有 Dennis Rodman 選出來
csv_url <- "https://storage.googleapis.com/ds_data_import/chicago_bulls_1995_1996.csv"
chicago_bulls <- read.csv(csv_url)
chicago_bulls
ncol(chicago_bulls)
chicago_bulls[c(7, 11, 12), ]
chicago_bulls[chicago_bulls$No. %in% c(23,33,91),]
chicago_bulls

#創建一個九九乘法矩陣
#way1
A <- matrix(1:9,nrow = 9)
A
t(A)
ans <- t(A) %*% A
print(ans)
#way2
ans <-rep(0,times = 81)
ans <- matrix(ans, nrow = 9)
i <- 1
j <- 1
for (i in 1:9){
  for (j in 1:9){
    ans[i,j] <- i*j
  }
}
print(ans)

#將公里轉換為英里的函數
km_to_mile <- function(x){
  f = x*0.62137
  return(f)
}
km_to_mile(21.095)
km_to_mile(42.195)

#判斷輸入 x 是否為質數的函數
is_prime <- function(x){
  i <- 1
  divisors_counter <- 0
  while (i <= x) {
    if (x %% i == 0) {
      divisors_counter <- divisors_counter + 1
    }
    i <- i + 1
  }
  return(divisors_counter==2)
}
is_prime(3)

#回傳介於 x 與 y 之間的質數個數（包含 x 與 y 如果他們也是質數）的函數
count_primes <- function(x, y) {
  primes <- c()
  for (i in x:y) {
    if (is_prime(i)) {
      primes <- c(primes, i)
    }
  }
  return(length(primes))
}
#計算圓面積或圓周長的函數
circle_calculator <- function(x,is_area = TRUE){
  if (is_area){
    a <- x**2*pi
    return(a)
  }else{
    d <- x*2*pi
    return(d)
  }
}
circle_calculator(3)
circle_calculator(3, is_area = FALSE)

#回傳介於 x 與 y 之間的質數個數（包含 x 與 y 如果他們也是質數）的函數
get_primes_and_counts <- function(x, y) {
  primes <- c()
  for (i in x:y) {
    if (is_prime(i)) {
      primes <- c(primes, i)
    }
    primes_and_counts <- list(
      primes = primes,
      counts = length(primes)
    )
  }
  return(primes_and_counts)
}
get_primes_and_counts(1, 5)
get_primes_and_counts(9, 19)
 
#使用向量化函數將 5 個球員的姓氏（last name）擷取出來並轉換成大寫 用有匿名函數較好
fav_players <- list("Steve Nash", "Paul Pierce", "Dirk Nowitzki", "Kevin Garnett", "Hakeem Olajuwon")
get_upper_last_name <- function(x) {
  splitted <- strsplit(x, split = " ")
  name_vec <- splitted[[1]]
  last_name <- name_vec[2]
  return(toupper(last_name))
}
get_upper_last_name("Steve Nash")
print(sapply(fav_players, FUN = get_upper_last_name))

#建立 fibonacci 數列
fib <- function(n) {
  if (n == 0) {
    return(0)
  } else if (n == 1) {
    return(1)
  } else {
    return(fib(n-1) + fib(n-2))
  }
}

fibonacci <- function(N) {
  res <- c()
  for (i in 1:N) {
    res <- c(res, fib(i))
  }
  return(res)
}
fibonacci(0)
fibonacci(1)
fibonacci(2)
fibonacci(20)

#鐵三角 Michael Jordan, Scottie Pippen 與 Dennis Rodman
csv_url <- "https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv"
chicago_bulls <- read.csv(csv_url, stringsAsFactors = FALSE) #不要讓資料變成因素
trio <- chicago_bulls[c(7,11,12),c("No.","Player")]
  #trio <- chicago_bulls[chicago_bulls$No. == 23|chicago_bulls$No. == 33|chicago_bulls$No. == 91,c("No.","Player")]
  #trio <- chicago_bulls[chicago_bulls$No. == 23|chicago_bulls$No. %in% c(23,33,91),c("No.","Player")]
trio

#新增變數 Ht_cm
csv_url <- "https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv"
chicago_bulls <- read.csv(csv_url, stringsAsFactors = FALSE) #不要讓資料變成因素
get_ht_cm <- function(x) {
  splitted <- strsplit(x, split = "-")
  feet <- as.numeric(splitted[[1]][1])
  inch <- as.numeric(splitted[[1]][2])
  ht_cm <- feet * 30.48 + inch * 2.54
  return(ht_cm)
}
  # loop and combine
ht_cm <- c()
for (h in chicago_bulls$Ht) {
  player_ht_cm <- get_ht_cm(h)
  ht_cm <- c(ht_cm, player_ht_cm)
}
chicago_bulls$Ht_cm <- ht_cm
head(chicago_bulls)
  # vectorization
ht_cm <- sapply(chicago_bulls$Ht, FUN = get_ht_cm)
chicago_bulls$Ht_cm <- ht_cm
head(chicago_bulls)

#摘要每個鋒衛位置的最高身高
csv_url <- "https://s3-ap-northeast-1.amazonaws.com/r-essentials/chicago_bulls_1995_1996.csv"
chicago_bulls <- read.csv(csv_url, stringsAsFactors = FALSE) #不要讓資料變成因素
get_ht_cm <- function(x) {
  splitted <- strsplit(x, split = "-")
  feet <- as.numeric(splitted[[1]][1])
  inch <- as.numeric(splitted[[1]][2])
  ht_cm <- feet * 30.48 + inch * 2.54
  return(ht_cm)
}
# loop and combine
ht_cm <- c()
for (h in chicago_bulls$Ht) {
  player_ht_cm <- get_ht_cm(h)
  ht_cm <- c(ht_cm, player_ht_cm)
}
chicago_bulls$Ht_cm <- ht_cm
head(chicago_bulls)
library(dplyr)
chicago_bulls %>% 
  mutate(Ht_cm) %>% 
  group_by(Pos) %>% 
  summarise(max_Ht_cm = max(Ht_cm))

#安裝gapminder回答以下問題
 #gapminder 範例資料集有 m 列，n 欄，請問 m =?, n =?
m <- ncol(gapminder)
n <- nrow(gapminder)
ans <- sprintf("gapminder 範例資料集有%s列，%s 欄",m,n)
 #請顯示 gapminder 範例資料集前三列與後三列
first_three <- head(gapminder,3)
first_three
last_three <- tail(gapminder,3)
last_three
 #gapminder 範例資料集有幾個國家？幾個洲別？
country <- gapminder$country %>% 
  unique() %>% 
  length()
continent <- gapminder$continent %>% 
  unique() %>% 
  length()
ans <- sprintf("`gapminder` 範例資料集有 %s 個國家、%s 個洲別",country,continent)
 #gapminder 範例資料集有哪些年份
ans <- unique(gapminder$year)
print(ans)
 #其他檢視 gapminder 範例資料集的函數：summary() 與 str()
summary(gapminder)
str(gapminder)

#JSON 格式資料:fromJSON() 函數一次就處理了兩個核心任務:對網站發出請求、將請求的回應解析為Array of JSONs、list(JSON)
install.packages("jsonlite")
library(jsonlite)
aqi_url <- "https://opendata.epa.gov.tw/ws/Data/AQI/?$format=json"
aqi <- fromJSON(aqi_url)
class(aqi)
summary(aqi)
 #全台灣有幾個空氣品質測站？
ans <- length(aqi$SiteName)
#ans <- nrow(aqi)
ans
 #列出位於臺北市與新北市的空氣品質測站
ans <- aqi %>% 
  filter(County %in% c("新北市","台北市") ) %>% 
  select(SiteName,County)
ans

#html練習
library(rvest)
movie_url <- "https://www.imdb.com/title/tt4154796"
get_movie_info <- function(x){
  movie_title <- html_doc %>% 
    html_nodes(css = "h1") %>% 
    html_text() %>% 
    trimws()#刪除空白處
 
  moving_rating <- html_doc %>% 
    html_nodes(css = "strong span") %>% 
    html_text() %>% 
    as.numeric()

  movie_genre <- html_doc %>% 
    html_nodes(css = ".subtext a+ a , .subtext a:nth-child(4)") %>% 
    html_text()  
 
 movie_posterLink <- html_doc %>% 
    html_nodes(css = ".poster img") %>% 
    html_attr("src")
  
  movie_cast <- html_doc %>% 
    html_nodes(css = ".primary_photo+ td a") %>% 
    html_text() %>% 
    strsplit(movie_cast,split = "\n")
  return(list("movie_title","movie_rating","movie_genre","movie_posterLink","cast"))
}
movie_url <- "https://www.imdb.com/title/tt4154796"
endgame_movie_info <- get_movie_info(movie_url)

movie_url <- "https://www.imdb.com/title/tt6320628/"
spiderman_movie_info <- get_movie_info(movie_url)










