students_data <- read.fwf("../data/tema1/student-fwf.txt",
                          widths = c(4,15,20,15,4),
                          col.names = c( "id", "carrera","email","carrera","año")
                          )

students_data_header <- read.fwf("../data/tema1/student-fwf-header.txt",
                                 widths = c(4,15,20,15,4),
                                 header = TRUE, sep = "\t",
                                 skip = 2)

students_data_sinemail <- read.fwf("../data/tema1/student-fwf.txt",
                          widths = c(4,15,-20,15,4),
                          col.names = c( "id", "carrera","carrera","año")
)
