# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(openxlsx)

# Read data --------------------------------------------------------------------
data_in <- read_csv("data-raw/dataset.csv")
# codebook <- read_excel("data-raw/codebook.xlsx") |>
#  clean_names()

# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here

# Expand the dataset into longer version
breathablepitlat <- data_in |>
  tidyr::pivot_longer(cols = 5:58,
               names_to = "Parameter",
               values_to = "Values") |>
  tidyr::separate(col = Parameter, sep = "_", into = c("Test","Location")) |>
  dplyr::mutate(num_test = is.numeric(Values)) |>
  dplyr::rename(Site = Toilet..)

# Modify categorical to factor data type
breathablepitlat <- breathablepitlat |>
  dplyr::rename_all(tolower) |>
  dplyr::mutate(dplyr::across(c(site, test, location), factor))

# Export Data ------------------------------------------------------------------
usethis::use_data(breathablepitlat, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(breathablepitlat,
                 here::here("inst", "extdata", paste0("breathablepitlat", ".csv")))
openxlsx::write.xlsx(breathablepitlat,
                     here::here("inst", "extdata", paste0("breathablepitlat", ".xlsx")))
