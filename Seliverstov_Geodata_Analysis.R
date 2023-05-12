#1. Інсталювати пакет leaflet
install.packages("leaflet")

#2. Підключіть бібліотеку, додайте до карти об’єкти за допомогою функцій addTiles, addMarkers, addPolygons.
library(leaflet)

m <- leaflet() %>%
  addTiles() %>% 
  addMarkers(lng = 30.63768, lat = 50.46677, popup = "ДТЕУ")
m

#3.Створити карту із вказанням координат центру карти (lng, lat) та масштабу (zoom).
#стадіон Camp Nou у Барселоні
m <- leaflet() %>% setView(lng = 2.1228, lat = 41.3809, zoom = 17)
m %>% addTiles()

#4.Використати карти інших розробників, використовуючи функцію addProviderTiles().
m%>% addProviderTiles(providers$Stamen.Toner)
m%>% addProviderTiles(providers$CartoDB.Positron)
m%>% addProviderTiles(providers$Esri.WorldImagery)

#5. Використати маркери  для  виділення  точок  на  карті. 
leaflet(data = quakes[1:20,]) %>% addTiles() %>%
  addMarkers(~long, ~lat, popup = ~as.character(mag), label = ~as.character(mag))

#6. Використати  різнокольорові  маркери для  зображення  певних  типів  об’єктів
#z6
df.20 <- quakes [1:20,]

getColor <- function(quakes) {
  sapply(quakes$mag, function(mag) {
    if(mag <=4) {
      "blue"
    } else if (mag <=5) {
      "red"
    } else {
      "lightgreen"
    }
  })
}

icons <- awesomeIcons (
  icon = 'ios-close',
  iconColor = 'black',
  library = 'ion',
  markerColor = getColor(df.20)
)

leaflet(df.20) %>% addTiles () %>%
  addAwesomeMarkers(~long, ~lat, icon = icons, label = ~as.character(mag))

#7.Застосувати  кластери  маркерів,  згрупувавши їх  за  допомогою  плагіну 
#Leaflet.markercluster зі  списком параметрів  аргументу clusterOptions.
leaflet(quakes) %>% addTiles() %>% addMarkers(
  clusterOptions = markerClusterOptions()
)