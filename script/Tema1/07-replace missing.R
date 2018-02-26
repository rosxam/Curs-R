data <- read.csv("../data/tema1/missing-data.csv", na.strings = "")

data$Income.mean <- ifelse(is.na(data$Income),
                           mean(data$Income, na.rm = TRUE),
                           data$Income)

# cream una funcio per posar valor aleatoris els NA

# primera funció

rand.impute <- function(x) {
  missing <- is.na(x)
  n.missing <- sum(missing)
  xobs <- x[!missing]
  imputed <- x
  imputed [missing] <- sample(xobs,n.missing, replace = TRUE)
  return (imputed)
}


random.impute.datafrme <- function(dataframe,cols){
  names<- names(dataframe)
  for (col in cols) {
    name <-paste (names[col],"imputed",sep = ".")
    dataframe[name] = rand.impute(dataframe[,col])
  }
  dataframe
}

data <- read.csv("../data/tema1/missing-data.csv", na.strings = "")

data$Income[data$Income==0] <- NA

data <- random.impute.datafrme(data, c(1,2))

help(col)
cols(data)

  
names <- names(data)
names
