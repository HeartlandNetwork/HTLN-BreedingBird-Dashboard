
# Script to load a data package into PowerBI

library(tidyverse)
library(EML)


# Power BI needs to know where the files are...

setwd("C:/Users/growell/HTLN-BreedingBird-Dashboard")

# Load csv files

_Plots <- read_csv("AA_Plots.csv")
AA_Vegetation_Detail <- read_csv("AA_VegetationDetail.csv")

# Load EML

my_eml <- read_eml("EVER_AA_metadata.xml")


title <- c(my_eml$dataset$title)
firstname <- c(my_eml$dataset$creator$individualName$givenName)
lastname <- c(my_eml$dataset$creator$individualName$surName)
pubdate <- c(my_eml$dataset$pubDate)
abstract <- c(my_eml$dataset$abstract$para)

eml_df <- data.frame(title, firstname, lastname, pubdate, abstract)

eml_df






