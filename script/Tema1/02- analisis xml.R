install.packages("XML")
library(XML)

url <- "../amrc/Documents/GitHub/Curs-R/data/tema1/cd_catalog.xml"

xmldoc <- xmlParse (url )

xmldoc

rootnode <- xmlRoot(xmldoc)

rootnode [2]

cds_data <- xmlSApply(rootnode, function (x) xmlSApply(x,xmlValue))


cds_catalog <- data.frame(t(cds_data), row.names = NULL)

head (cds_catalog,2)

cds_catalog [,1:2 ]

population_url <- "../GitHub/Curs-R/data/tema1/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url)

most_populate <- tables[[6]]
head(most_populate, 3)

tables

# prova marca

url_marca <- "http://www.marca.com/futbol/primera-division/clasificacion.html"
clasificacion <- readHTMLTable(url_marca,which = 1,  skip.rows = c(1,2)
                            )
# per caviar el nom a les varaibles
colnames(clasificacion) <- c("Clasificación","equipo","PJ","PG" ,"PE", "PP",
                             "GF","GC","PT","PJ","PG","PE","PP","GF","GC",
                             "PT","PJ","PG","PE","PP","GF", "GC", "PT"
)

acap
wiki_table[1]
head(wiki_table,1)

help(header
     )
??header
