# This script will separate the first and last names of a single column into two columns

#load necessary packages
library(tidyverse)

#set directories
home <- getwd()
data.dir <- file.path(home, "data")
output.dir <- file.path(home, "output")

# read the CSV in
data <- read_csv(file.path(data.dir, "coaching_emails.csv"))

#separate the names
first.last <- data %>% 
  separate(, col = "Name:", 
           into = c('first_name', 'last_name'), sep = ' ')

# remove NAs
cleaned <- first.last %>%  select(first_name, last_name, `Email address:`) %>%
  drop_na(first_name, `Email address:`)

cleaned %>% write_csv(, file = file.path(output.dir, "coaching_separated.csv"), na = "NA", append = FALSE, col_names = TRUE)
