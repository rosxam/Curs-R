auto <- read.csv("../Curs-R/data/tema1/auto-mpg.csv",
                 header = T, sep = ",",
                 na.strings = "N/A",
                 stringsAsFactors = FALSE)
names(auto) 

auto_no_header <- read.csv("../Curs-R/data/tema1/auto-mpg-noheader.csv", header = FALSE)
head(auto_no_header, 4)
tail(auto_no_header)

auto_custom_header <- 
  read.csv("../Curs-R/data/tema1/auto-mpg-noheader.csv",
           header = FALSE,
           col.names = c( "numeros","millas_por_galeon","cilindros",
                          "desplazamiento","caballos_de_potencia","peso",
                          "aceleraci?n","a?o","modelo"
                          )
           )

head(auto_custom_header,2)

auto_from_internet <- read.csv("https://frogames.es/course-contents/r/intro/tema1/WHO.csv")
  
auto_from_internet <- read.csv("https://raw.githubusercontent.com/rosxam/Curs-R/master/data/tema1/WHO.csv")

head (auto_from_internet,1)
