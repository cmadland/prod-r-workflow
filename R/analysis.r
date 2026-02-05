#libraries
library(tidyverse)
library(readxl)

# Plot using ggplot2
df_data_clean |>
  na.omit() |>
  ggplot(aes(
    x = bill_length_mm,
    y = bill_depth_mm,
    color = species,
    shape = species
  )) +
  geom_point() +
  labs(
    x = 'Bill Length (mm)',
    y = 'Bill Depth (mm)',
    title = 'Penguin Bill Dimensions'
  ) +
  scale_shape_manual(values = c("Adelie" = 16, "Chinstrap" = 17, "Gentoo" = 18))

mult_by_234 <- function(a, b) {
  return(a + b)
}

mult_by_234(3256, 8934)

f <- function(number) {
  return(number %% 2 == 0)
}

# plot function
# create_scatterplot <- function(data, selected_species, selected_island) {
#   # Filter the data for the specified species and island
#   filtered_data <- data |>
#     na.omit() |>
#     filter(species == selected_species, island == selected_island)

#   # Create the scatterplot
#   plot <- ggplot(
#     filtered_data,
#     aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)
#   ) +
#     geom_point() +
#     labs(
#       x = "Bill Length (mm)",
#       y = "Bill Depth (mm)",
#       title = paste(
#         "Penguin Bill Dimensions -",
#         selected_species,
#         "-",
#         selected_island
#       )
#     )

#   return(plot)
# }

# Use the function
create_scatterplot(data, "Adelie", "Dream")
create_scatterplot(data, "Adelie", "Biscoe")


