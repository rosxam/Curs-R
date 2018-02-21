install.packages("XML")
library(XML)

url <- "../Curs-R/data/tema1/cd_catalog.xml"

xmldoc <- xmlParse (url )

xmldoc

rootnode <- xmlRoot(xmldoc)

rootnode [1]

cds_data <- xmlSApply(rootnode, function (x) xmlSApply(x,xmlValue))


cds_catalog <- data.frame(t(cds_data), row.names = NULL)
