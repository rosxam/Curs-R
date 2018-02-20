auto <- read.csv("../data/tema1/auto-mpg.csv",header = T, sep = ",")
names(auto) 

auto_no_header <- read.csv("../data/tema1/auto-mpg-noheader.csv", header = FALSE)
head(auto_no_header, 4)
tail(auto_no_header)

auto_custom_header <- 
  read.csv("../data/tema1/auto-mpg-noheader.csv",
           header = FALSE,
           col.names = c( "numeros","millas_por_galeon","cilindros",
                          "desplazamiento","caballos_de_potencia","peso",
                          "aceleración","año","modelo"
                          )
           )

head(auto_custom_header,2)
