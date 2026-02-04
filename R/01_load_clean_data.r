# Libraries

library(tidyverse)

# Load data

df <- read_excel("input/data.xlsx", na = "NA")

# Remove 2 rows
df_clean_data <- df |>
  slice(-c(23, 48))

# Save RDS

saveRDS(df_clean_data, file = "input/df_clean_data.rds")

str(df)