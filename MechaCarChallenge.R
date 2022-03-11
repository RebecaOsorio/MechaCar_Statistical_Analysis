# Module 15 Challenge

# Import dplyr library
library(dplyr)

# Import csv file as a dataframe
mecha_car_mpg <- read.csv("resources/MechaCar_mpg.csv")

# Linear Regression model
model <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, mecha_car_mpg)

# Extract p-value and r-squared value for the regression
summary(model)

## SECOND DELIVERY ----
# Import Suspension_Coil.csv file as a dataframe
suspension_coil <- read.csv("resources/Suspension_Coil.csv")

# Create summary table for the PSI column
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI))

# Create a lot summary
lot_demo <- suspension_coil %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI),.groups = 'keep')

## THIRD DELIVERY ----
# Sample from the suspension_coil
suspension_coil_sample <- sample(suspension_coil$PSI,20)

# t test to verify if there are no differences
t.test(x = suspension_coil_sample,mu = total_summary$Mean)

# Get the PSI values for each lot
suspension_coil_lot1_PSI <- subset(suspension_coil,Manufacturing_Lot == "Lot1", PSI)
suspension_coil_lot2_PSI <- subset(suspension_coil,Manufacturing_Lot == "Lot2", PSI)
suspension_coil_lot3_PSI <- subset(suspension_coil,Manufacturing_Lot == "Lot3", PSI)

# Perform a t test to each lot
t.test(x = suspension_coil_lot1_PSI, mu = total_summary$Mean)
t.test(x = suspension_coil_lot2_PSI, mu = total_summary$Mean)
t.test(x = suspension_coil_lot3_PSI, mu = total_summary$Mean)


