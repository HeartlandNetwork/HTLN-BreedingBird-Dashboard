

# Loading csvs and EML into Power BI
# using the EVER_AA_Data dataset example

library(tidyverse)
library(EML)

# https://www.rdocumentation.org/packages/emld/versions/0.5.1

# Power BI needs to know where the files are...

setwd("C:/Users/growell/HTLN-BreedingBird-Dashboard/src/EVER_example")


AA_Plots <- read_csv("AA_Plots.csv")
AA_Vegetation <- read_csv("AA_VegetationDetail.csv")

my_eml <- read_eml("EVER_AA_metadata.xml")

my_eml$dataset$title
my_eml$dataset$creator$individualName$givenName
my_eml$dataset$creator$individualName$surName
my_eml$dataset$pubDate
my_eml$dataset$abstract$para

eml_EVER_example <- c(my_eml$dataset$title,
                my_eml$dataset$creator$individualName$givenName,
                my_eml$dataset$creator$individualName$surName,
                my_eml$dataset$pubDate,
                my_eml$dataset$abstract$para)
                
eml_EVER_example

eml_df  <- data.frame(eml_EVER_example)

eml_df





# https://www.rdocumentation.org/packages/emld/versions/0.5.1


eml_vector <- c(my_eml$dataset$title, my_eml$dataset$creator, 
                my_eml$dataset$pubDate, my_eml$dataset$abstract)

eml_df  <- data.frame(eml_vector)

# the dataframes AA_Plots, AA_Vegetation, and eml_df are visible as tables
# in Power BI

view(eml_df)








