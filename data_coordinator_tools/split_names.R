# This script will separate the first and last names of a single column into two columns

#load necessary packages
library(tidyverse)

#set directories
home <- getwd()
data.dir <- file.path(home, "data")
output.dir <- file.path(home, "output")

