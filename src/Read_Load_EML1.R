


library(EML)

setwd("src/EVER_example")


eml <- read_eml("EVER_AA_metadata.xml")

# https://www.rdocumentation.org/packages/emld/versions/0.5.1


typeof(eml)

class(eml)

eml$dataset$title
eml$dataset$creator
eml$dataset$pubDate
eml$dataset$abstract






