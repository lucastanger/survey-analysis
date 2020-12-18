rm(list=ls())

if (!require('plyr')) {
  install.packages("plyr", dependencies = T)
  require("plyr")
  
  install.packages(c("cowplot", "googleway", "ggplot2", "ggrepel", "ggspatial", "libwgeom", "sf", "rnaturalearth", "rnaturalearthdata"))
}

library("ggplot2")
theme_set(theme_classic())
library("sf")

library("rnaturalearth")
library("rnaturalearthdata")

library(skimr)

# Library for Map Colorization
library(RColorBrewer)

library(forcats)

if(!require(rgeos)) {
  install.packages("rgeos", dependencies = T)
  require(rgeos)
}