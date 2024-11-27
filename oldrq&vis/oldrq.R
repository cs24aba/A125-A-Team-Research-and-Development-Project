library(ggplot2)

# Ensure 'education.num' is numeric
data$education.num <- as.numeric(as.character(data$education.num))

# Plot histogram with density curve
ggplot(data, aes(x = education.num)) +
  geom_histogram(bins = 10, fill = "lightblue", color = "black", alpha = 0.7) +
  geom_density(aes(y = ..count..), color = "blue", size = 1) +
  labs(
    title = "Histogram",
    x = "Levels of education of Education (education.num)",
    y = "Frequency"
  ) +
  theme_minimal()