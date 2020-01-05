install.packages("leaflet")
library(leaflet)

map <- leaflet()
map <- addTiles(map)
map <- addMarkers(map,lng = 121.545949,lat = 25.093574,popup = '東吳巨資')
map

map <- leaflet() %>% 
  addTiles() %>% 
  addMarkers(lng = 121.545949,lat = 25.093574,popup = '東吳巨資')
map

map <- leaflet() %>% 
  addTiles() %>% 
  SetView(lng = 121.545949,lat = 25.093574, zoom = 18)
map

map %>% fitBounds(121.522600,25.102911,121.557957,25.083447)

SCU_Place <- read.csv("/Users/yulin/Desktop/data_SCU_Place.csv")
map <- leaflet(SCU_Place) %>% 
  addTiles() %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 17)
map %>% addCircles()

map %>% addCircles(lng = ~Lon,lat = ~Lat)

map %>% addCircleMarkers(radius = ~Visit,color = "blue",fill = FALSE)
map %>% addCircleMarkers(radius = ~Visit,color = "blue",fill = TRUE)

map <- leaflet(SCU_Place) %>% 
  addProviderTiles("Stamen.Toner") %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 12)
map %>% addCircleMarkers(radius = ~Visit,color"blue",fill = FALSE)

map <- leaflet(SCU_Place) %>% 
  addProviderTiles("Stamen.Watercolor") %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 12)
map %>% addCircleMarkers(radius = ~Visit,color"blue",fill = FALSE)

map <- leaflet(SCU_Place) %>% 
  addProviderTiles("Stamen.Toner") %>% 
  addProviderTiles("stamen.Watercolor",
                   options = providerTileOptions(opacity = 0.5)) %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 12)
map %>% addCircleMarkers(radius = ~Visit,color"blue",fill = FALSE)

leaflet(data = SCU_Place) %>% addTiles() %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 16) %>% 
  addMarkers(~Lon,~Lat,popup = ~as.character(Place))

leaflet(data = SCU_Place) %>% addTiles() %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 16) %>% 
  addMarkers(~Lon,~Lat,popup = ~paste("哈哈，我是：",~as.character(Place)))

redLeafIcon <- makeIcon(
  iconUrl = "http://leafletjs.com/examples/custom-icons/leaf-red.png",
  iconWidth = 38,iconHeight = 95,
  iconAnchorX = 22,iconAnchorY = 94,
  shadowUrl = "http://leafletjs.com/examples/customs-icons/leaf-shadow.png",
  shadowWidth = 50,shadowHeight = 64,
  shadowAnchorX = 4,shadowAnchorY = 64
)
leaflet(data = SCU_Place) %>% addTiles() %>% 
  setView(lng = 121.54,lat = 25.04,zoom = 16) %>% 
  addMarkers(~Lon,~Lat,popup = ~as.character(Place),
             icon = redLeafIcon)

eggIcon <- makeIcon(
  iconUrl = "https://stickershop.line-scdn.net/sticonshop/v1/sticon/5c109f82031a67719d100d89/iphone/008.png",
  iconWidth = 50,iconHeight = 50,
  iconAnchorX = 22,iconAnchorY = 94,
  )
leaflet(data = SCU_Place) %>% addTiles() %>% 
  setView(lng = 121.54,lat = 25.04,zoom = 14) %>% 
  addMarkers(~Lon,~Lat,popup = ~as.character(Place),
             icon = eggIcon)

map <- leaflet() %>% addTiles() %>% 
  setView(lng = 121.545949,lat = 25.093574,zoom = 18)
map

df = data.frame(Lat = 1:20,Long = rnorm(20))
leaflet(df) %>% addCircles()

SCU_Place <- read.csv("/Users/yulin/Desktop/data_SCU_Place.csv")
View(SCU_Place)

leaflet() %>% addCircles(data = SCU_Place,lat = ~Lat,lng = ~Lon)

df.quakes <- quakes[1:66,]
View(df.quakes)

getColor <- function(quakes){
  sapply(quakes$mag,function(mag){
    if(mag<=4){"gree"
    }else if(mag<=5){"purple"
    }else{"orange"
    }}}}
