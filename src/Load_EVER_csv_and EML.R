

# Loading csvs and EML into Power BI
# using the EVER_AA_Data dataset example

library(tidyverse)
library(EML)

# Power BI needs to know where the files are...

setwd("C:/Users/growell/HTLN-BreedingBird-Dashboard/src/EVER_example")


AA_Plots <- read_csv("AA_Plots.csv")
AA_Vegetation <- read_csv("AA_VegetationDetail.csv")

my_eml <- read_eml("EVER_AA_metadata.xml")

# https://www.rdocumentation.org/packages/emld/versions/0.5.1

# exploring the eml

# typeof(my_eml)

# class(my_eml)

my_eml$dataset$title
my_eml$dataset$creator
my_eml$dataset$pubDate
my_eml$dataset$abstract

eml_vector <- c(my_eml$dataset$title, my_eml$dataset$creator, 
                my_eml$dataset$pubDate, my_eml$dataset$abstract)

eml_df  <- data.frame(eml_vector)

# the dataframes AA_Plots, AA_Vegetation, and eml_df are visible as tables
# in Power BI





