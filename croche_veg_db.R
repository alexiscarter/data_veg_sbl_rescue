# Vegetation data
# Cleaning 

# Before loading data I check and replace comma by point in the raw excel files

# Year 1998 will be used as reference
# Needed changes in the code of the subsequent year will be specified directly in the corresponding line of the code

# Number of excel sheet can be different

# Data from 1998 tp 2006 data given by Étienne Laliberté as they are.
# years 2016, 2017, 2018 have been extracted from Googlesheets in excel file.

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

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_1998 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_1998.csv")

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

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_1999 <- readxl::read_excel("raw/Donnees_brutes_1998.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_1999.csv")

# 2000 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2000 <- readxl::read_excel("raw/Donnees_brutes_2000.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_2000.csv")

# Saplings, 2 types of sapling between 1 to 5 cm (sapling 1) and 5 to 10 cm (sapling 2)
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2000 <- readxl::read_excel("raw/Donnees_brutes_2000.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling2_2000.csv")

sapling1_2000 <- readxl::read_excel("raw/Donnees_brutes_2000.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling1_2000.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling_2000 <- readxl::read_excel("raw/Donnees_brutes_2000.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling_2000.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2000 <- readxl::read_excel("raw/Donnees_brutes_2000.xls", sheet = 5) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_2000.csv")

# 2001 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2001 <- readxl::read_excel("raw/Donnees_brutes_2001.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_2001.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling_2001 <- readxl::read_excel("raw/Donnees_brutes_2001.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling_2001.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling_2001 <- readxl::read_excel("raw/Donnees_brutes_2001.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling_2001.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2001 <- readxl::read_excel("raw/Donnees_brutes_2001.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_2001.csv")

# no 2002 data ####

# 2003 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2003 <- readxl::read_excel("raw/Donnees_brutes_2003.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_2003.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2003 <- readxl::read_excel("raw/Donnees_brutes_2003.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling2_2003.csv")

sapling1_2003 <- readxl::read_excel("raw/Donnees_brutes_2003.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling1_2003.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2003 <- readxl::read_excel("raw/Donnees_brutes_2003.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling2_2003.csv")

seedling1_2003 <- readxl::read_excel("raw/Donnees_brutes_2003.xls", sheet = 5) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling1_2003.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2003 <- readxl::read_excel("raw/Donnees_brutes_2003.xls", sheet = 6) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_2003.csv")

# 2004 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2004 <- readxl::read_excel("raw/Donnees_brutes_2004.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_2004.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2004 <- readxl::read_excel("raw/Donnees_brutes_2004.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling2_2004.csv")

sapling1_2004 <- readxl::read_excel("raw/Donnees_brutes_2004.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling1_2004.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2004 <- readxl::read_excel("raw/Donnees_brutes_2004.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling2_2004.csv")

seedling1_2004 <- readxl::read_excel("raw/Donnees_brutes_2004.xls", sheet = 5) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling1_2004.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2004 <- readxl::read_excel("raw/Donnees_brutes_2004.xls", sheet = 6) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_2004.csv")

# 2005 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2005 <- readxl::read_excel("raw/Donnees_brutes_2005.xls", sheet = 1)  %>%
  gather(DHP, dhp, -Station, -Espèce, na.rm = TRUE) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, -DHP, station = Station) %>% 
  write_csv("raw_cleaned/tree_2005.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2005 <- readxl::read_excel("raw/Donnees_brutes_2005.xls", sheet = 2) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling2_2005.csv")

sapling1_2005 <- readxl::read_excel("raw/Donnees_brutes_2005.xls", sheet = 3) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = Nombre) %>% 
  write_csv("raw_cleaned/sapling1_2005.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2005 <- readxl::read_excel("raw/Donnees_brutes_2005.xls", sheet = 4) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling2_2005.csv")

seedling1_2005 <- readxl::read_excel("raw/Donnees_brutes_2005.xls", sheet = 5) %>%
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, count = 3) %>% 
  write_csv("raw_cleaned/seedling1_2005.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2005 <- readxl::read_excel("raw/Donnees_brutes_2005.xls", sheet = 7) %>% # Sheet 6 is not shrubs
  mutate(codeTaxa = str_sub(Espèce, -4)) %>% 
  select(-Espèce, station = Station, cover = 3) %>% 
  write_csv("raw_cleaned/understory_2005.csv")

# 2016 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2016 <- readxl::read_excel("raw/BIO3753_CrocheData_2016.xlsx", sheet = 1)  %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/tree_2016.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2016 <- readxl::read_excel("raw/BIO3753_CrocheData_2016.xlsx", sheet = 2) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling2_2016.csv")

sapling1_2016 <- readxl::read_excel("raw/BIO3753_CrocheData_2016.xlsx", sheet = 3) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling1_2016.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2016 <- readxl::read_excel("raw/BIO3753_CrocheData_2016.xlsx", sheet = 4) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling2_2016.csv")

seedling1_2016 <- readxl::read_excel("raw/BIO3753_CrocheData_2016.xlsx", sheet = 5) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling1_2016.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2016 <- readxl::read_excel("raw/BIO3753_CrocheData_2016.xlsx", sheet = 6) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/understory_2016.csv")

# 2017 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2017 <- readxl::read_excel("raw/BIO3753_CrocheData_2017.xlsx", sheet = 1)  %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/tree_2017.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2017 <- readxl::read_excel("raw/BIO3753_CrocheData_2017.xlsx", sheet = 3) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling2_2017.csv")

sapling1_2017 <- readxl::read_excel("raw/BIO3753_CrocheData_2017.xlsx", sheet = 2) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling1_2017.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2017 <- readxl::read_excel("raw/BIO3753_CrocheData_2017.xlsx", sheet = 5) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling2_2017.csv")

seedling1_2017 <- readxl::read_excel("raw/BIO3753_CrocheData_2017.xlsx", sheet = 4) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling1_2017.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2017 <- readxl::read_excel("raw/BIO3753_CrocheData_2017.xlsx", sheet = 6) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/understory_2017.csv")


# 2018 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2018 <- readxl::read_excel("raw/BIO3753_CrocheData_2018.xlsx", sheet = 1)  %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/tree_2018.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2018 <- readxl::read_excel("raw/BIO3753_CrocheData_2018.xlsx", sheet = 3) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling2_2018.csv")

sapling1_2018 <- readxl::read_excel("raw/BIO3753_CrocheData_2018.xlsx", sheet = 2) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling1_2018.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2018 <- readxl::read_excel("raw/BIO3753_CrocheData_2018.xlsx", sheet = 4) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling2_2018.csv")

seedling1_2018 <- readxl::read_excel("raw/BIO3753_CrocheData_2018.xlsx", sheet = 5) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling1_2018.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2018 <- readxl::read_excel("raw/BIO3753_CrocheData_2018.xlsx", sheet = 6) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/understory_2018.csv")

# To be done
# 2019 data ####
# Mature trees
# Transform in long format
# Keep only 4 letters of the code before species names
# Clean columns
dhp_2019 <- readxl::read_excel("raw/BIO3753_CrocheData_2019.xlsx", sheet = 1)  %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/tree_2019.csv")

# Saplings
# Keep only 4 letters of the code before species names
# Clean columns
sapling2_2019 <- readxl::read_excel("raw/BIO3753_CrocheData_2019.xlsx", sheet = 3) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling2_2018.csv")

sapling1_2019 <- readxl::read_excel("raw/BIO3753_CrocheData_2019.xlsx", sheet = 2) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/sapling1_2019.csv")

# Seedlings
# Keep only 4 letters of the code before species names
# Clean columns
seedling2_2019 <- readxl::read_excel("raw/BIO3753_CrocheData_2019.xlsx", sheet = 4) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling2_2019.csv")

seedling1_2019 <- readxl::read_excel("raw/BIO3753_CrocheData_2019.xlsx", sheet = 5) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/seedling1_2019.csv")

# understory plants
# Keep only 4 letters of the code before species names
# Clean columns
understory_2019 <- readxl::read_excel("raw/BIO3753_CrocheData_2019.xlsx", sheet = 6) %>%
  na.omit() %>%
  rename(codeTaxa = codesp) %>% 
  write_csv("raw_cleaned/understory_2019.csv")

