## Script to load and conduct initial adjustments to oak plant community dataset
## JD Bakker
## 190123

# Load packages
require(vegan)
require(labdsv)
require(magrittr)

# Set working directory
setwd(choose.dir())
#setwd("C://Users/jbakker/Desktop/SEFS 502/")

# Load data
Oak <- read.csv("data/Oak_data_47x216.csv", header = TRUE, row.names = 1) 
Oak_spp <- read.csv("data/Oak_species_189x5.csv", header = TRUE)

# Subset response and explanatory variables
Oak_abund <- Oak[ , colnames(Oak) %in% Oak_spp$SpeciesCode] 
Oak_explan <- Oak[ , ! colnames(Oak) %in% Oak_spp$SpeciesCode]

# Make adjustments to response variables
Oak1 <- Oak_abund %>%
  vegtab(minval = 0.05 * nrow(Oak_abund)) %>% # Remove rare species
  decostand("max") # Relativize by species maxima
