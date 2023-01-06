library(dplyr)

# Import the MechaCar_mpg.csv data.
Mecha_cars <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Generate the linear regression model.
mpg_model <- lm(mpg ~ vehicle_length + vehicle_weight +
                  spoiler_angle + ground_clearance + AWD, mechacar_mpg)

# Summarize the model.
mpg_summ <- summary(mpg_model)

# Display the summary.
mpg_summ
