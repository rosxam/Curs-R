install.packages("scales")
library(scales)

students <- read.csv("../data/tema1/data-conversion.csv")

students$Income.rescaled <- rescale(students$Income)

(students$Income - min(students$Income))/
  (max(students$Income) - min(students$Income))

rescale(students$Income, to = c(0,100))

names(students)

col(students)
colS (students)


help (col)

rescale.many <- function(dataframe, cols) {
  names <- names (dataframe)
  for (col in cols) {
    name <- paste (name[col], "rescaled", sep= ".")
    dataframe[name] <- rescale(dataframe[,col])
  }
  cat (paste ( "Hemos reescalado " , length(cols), " variable(s)"))
  dataframe
}

help ("cat")
