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

# Import Suspension_Coil CSV and read it in as a DF
susp_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# Total summary of all the coils.
total_summary <- susp_coil %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")

# Get the lot summary of the coils.
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")

# Check lot_summary
lot_summary

#T-Test for all Suspension Coils.
t.test(susp_coil$PSI, mu=1500)

#T-Test for Lot 1.
t.test(subset(susp_coil, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500)

#T-Test for Lot 2.
t.test(subset(susp_coil, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500)

#T-Test for Lot 3.
t.test(subset(susp_coil, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500)
