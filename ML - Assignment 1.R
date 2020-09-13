# Upload cereals.csv file into R Studio
# Cereals.csv is from our class's Blackboard

cereal_data <- read.csv("cereals.csv", header = T, sep = ",")

# Quantitative descriptive stats
# Quantitative variables in cereals.csv include: calories, protein, fat, sodium, fiber, carbo, sugars, potass, vitamins, weight, cups, rating

mean(cereal_data$calories)

median(cereal_data$protein)

sd(cereal_data$sodium)

quantile(cereal_data$fiber)

# Transform a variable

scale(cereal_data$calories, center = T, scale = T )


# Categorical descriptive stats
# Categorical variables in cereals.csv include: mfr, type, shelf

bargraph <- ggplot(cereal_data, aes(mfr)) + geom_bar() + theme_classic()
bargraph

# Quantitative graph and scatter plot 
histogram <- ggplot(cereal_data, aes(protein)) + geom_histogram() + theme_classic()
histogram

scatterplot <- ggplot(cereal_data, aes(x = carbo, y = sugars)) + geom_point()
scatterplot
