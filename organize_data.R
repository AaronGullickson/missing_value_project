# This script will read in the data from the 2020 CCES wave and extract
# what we need


# Load libraries ----------------------------------------------------------


library(here)
library(readr)
library(tidyverse)


# Load data ---------------------------------------------------------------

cces <- read_csv(here("input","CES20_Common_OUTPUT_vv.csv.gz")) %>%
  select(ideo5, pid3, race, gender, educ, faminc_new, pew_religimp)


# Clean data --------------------------------------------------------------

# Check all variables for missing values and input where necessary

# Code all variables except ideo5 and faminc_new as categorical (factor)
# variables



# Save data ---------------------------------------------------------------

save(cces, file=here("output","cces.RData"))


