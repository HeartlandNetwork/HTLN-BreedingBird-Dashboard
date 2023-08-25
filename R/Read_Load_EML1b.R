


library(EML)

setwd("src/EVER_example")


#read_eml(EVER_AA_eml, from = "src/EVER_example/EVER_AA_metadata.xml")


read_eml(".", from = "EVER_AA_metadata.xml")

f <- system.file("extdata", "example.xml", package = "emld")
eml <- read_eml("EVER_AA_metadata.xml")

eml



