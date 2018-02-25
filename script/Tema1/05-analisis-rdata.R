clientes <- c("a","b","c")
fechas <- as.Date(c("2017-01-01", "2017-02-01", "2017-03-01"))
pago <- c(100,200,300.50)
pedidos <- data.frame(clientes,fechas,pago)
clientes_vip <- c("a","b")

save(pedidos, clientes_vip, file = "../data/tema1/pedidos.Rdata")
saveRDS(pedidos, file = "../data/tema1/pedidos.rds")

remove(pedidos)

load("../data/tema1/pedidos.Rdata")
 
orders <- readRDS("../data/tema1/pedidos.rds")

data(iris)
data (cars)

save.image(file = "../data/tema1/alldata.Rdata")
 

data()
