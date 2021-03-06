# Communicating with Data in the Tidyverse
# https://www.datacamp.com/courses/communicating-with-data-in-the-tidyverse

# Join both data frames
ilo_data <- ilo_hourly_compensation %>%
  inner_join(ilo_working_hours, by = c("country", "year"))

# Count the resulting rows
ilo_data  %>% 
  count()

# Examine ilo_data
ilo_data

# Turn year into a factor
ilo_data <- ilo_data %>%
  mutate(year = as.factor(as.numeric(year)))

# Turn country into a factor
ilo_data <- ilo_data %>%
  mutate(country = as.factor(country))

# Examine the European countries vector
european_countries

# Only retain European countries
ilo_data <- ilo_data %>%
  filter(country %in% european_countries)

# Examine the structure of ilo_data
str(ilo_data)

# Group and summarize the data
ilo_data %>%
  group_by(year) %>%
  summarize(mean_hourly_compensation = mean(hourly_compensation),
            mean_working_hours = mean(working_hours))

# Filter for 2006
plot_data <- ilo_data %>%
  filter(year == 2006)

# Create the scatter plot
ggplot(plot_data) +
  geom_point(aes(x = working_hours, y = hourly_compensation))

# Create the plot
ggplot(plot_data) +
  geom_point(aes(x = working_hours, y = hourly_compensation)) +
  # Add labels
  labs(
    x = "Working hours per week",
    y = "Hourly compensation",
    title = "The more people work, the less compensation they seem to receive",
    subtitle = "Working hours and hourly compensation in European countries, 2006",
    caption = "Data source: ILO, 2017"
  )

# Save your current plot into a variable: ilo_plot
ilo_plot <- ggplot(plot_data) +
  geom_point(aes(x = working_hours, y = hourly_compensation)) +
  labs(
    x = "Working hours per week",
    y = "Hourly compensation",
    title = "The more people work, the less compensation they seem to receive",
    subtitle = "Working hours and hourly compensation in European countries, 2006",
    caption = "Data source: ILO, 2017"
  )

# Try out theme_minimal
ilo_plot +
  theme_minimal()

# Try out any other possible theme function
ilo_plot +
  theme_light() 

ilo_plot <- ilo_plot +
  theme_minimal() +
  # Customize the "minimal" theme with another custom "theme" call
  theme(
    text = element_text(family = "Bookman"),
    title = element_text(color = "gray25"),
    plot.subtitle = element_text(size = 12),
    plot.caption = element_text(color = "gray30")
  )

# Render the plot object
ilo_plot

ilo_plot +
  # "theme" calls can be stacked upon each other, so this is already the third call of "theme"
  theme(
    plot.background = element_rect(fill = "gray95"),
    plot.margin = unit(c(5, 10, 5, 10), units = "mm")
  )
