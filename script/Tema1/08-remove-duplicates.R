family.salary <- c(40000, 60000,50000,80000,60000, 70000,60000)
family.size <- c(4,3,2,2,3,4,3)
family.car <- c("lujo","compacto","utilitario","lujo", "compacto", "compacto", "compacto")
family <- data.frame(family.salary,family.size, family.car)

family.unique <-unique(family)

duplicated(family)

family[duplicated(family),]
