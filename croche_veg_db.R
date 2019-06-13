# Vegetation data
# Access and clean data from 1998 tp 2006
# Data given by Étienne Laliberté

# Before load data I replace comma by point in the raw excel files

# Load package
library(tidyverse)

## 1998 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_1998 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_1998.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling_1998 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling_1998.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling_1998 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling_1998.csv")

# Understorey plants
# Keep only 4 letters of the code before species names
# Clean columns
understorey_1998 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understorey_1998.csv")

# 1999 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_1999 <- readxl::read_excel("raw/Donnees_brutes_1999.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_1999.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling_1999 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling_1999.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling_1999 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling_1999.csv")

# Understorey plants
# Keep only 4 letters of the code before species names
# Clean columns
understorey_1999 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understorey_1999.csv")

