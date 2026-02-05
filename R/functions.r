# Learn Functions at https://r4ds.had.co.nz/functions.html#functions

# plot function
create_scatterplot <- function(df, selected_species, color) {
  # Filter the data for the specified species and island
  filtered_data <- df |>
    na.omit() |>
    dplyr::filter(species == selected_species)

  # Create the scatterplot
  plot <- ggplot(
    filtered_data,
    aes(x = bill_length_mm, y = bill_depth_mm)
  ) +
    geom_point(color=color) +
    labs(
      x = "Bill Length (mm)",
      y = "Bill Depth (mm)",
      title = selected_species
      ) +
    theme(legend.position = "none")

  return(plot)
}

# calc_mean_bill <- function(island_name) {
#   filtered_data <- subset(na.omit(data), species == "Adelie" & island == island_name)
#   mean_bill_length <- mean(filtered_data$bill_length_mm)
#   return(round(mean_bill_length, 2))
# }

# # Call the function for each island
# calc_mean_bill("Torgersen")
# calc_mean_bill("Biscoe")
# calc_mean_bill("Dream")

df_clean_data <- readRDS(file = "input/df_clean_data.rds")

avg_mass <- num(mean(df_clean_data$body_mass_g, na.rm = TRUE), digits = 2)

avg_mass