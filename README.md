# MechaCar_Statistical_Analysis
## Project Overview
* Perform multiple linear regression analyses to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, write a summary interpretation of the findings.

## Linear Regression to Predict MPG
The dataset for the 50 MechaCar prototype vehicles has 6 variables: (vehicle length, vehicle weight, spoiler angle, ground clearance, all-wheel-drive assignment, miles 
per gallon).



![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/67697826/210939327-6660c308-79a9-4ed9-a31c-ca066b534629.png)
![Linear Regression to Predict MPG2](https://user-images.githubusercontent.com/67697826/210939338-d9a72de8-c0d2-4be7-8379-fe5765a4e696.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?** 
Vehicle length (2.60e-12 coefficient) and ground clearance (5.21e-08 coefficient) variables provide a non-random measure of variance to the MPG values within the dataset, which implies these variables would have a substantial impact to MPG. Vehicle weight, spoiler angle, and AWD each have coefficients > 0.05, which suggest these variables are much less likely to pose a considerable negative impact to the vehicles MPG. 

**Is the slope of the linear model considered to be zero? Why or why not?**
With the p-value being considerably smaller than the significance level of 0.05%, the slope of the linear model could not be zero.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
With an R-squared value of roughly 0.71, an accuracy of approximately 71% indicates the factors used to predict MPG in MechaCar’s prototypes would be quite effective.

## Summary Statistics on Suspension Coils



![PSI_total_summary](https://user-images.githubusercontent.com/67697826/210949673-8438357a-6b4e-47cc-9407-d556bf8597da.png)


![PSI_lot_summary](https://user-images.githubusercontent.com/67697826/210949730-d8b422cf-8b8d-41c6-9125-03806cc046ad.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
With a median PSI variance of 62.29, the present manufacturing data meets the requirement of under 100 PSI for all lots. However, separately, variances for Lot 1 and Lot 2 remain within compliance, with variances of 0.98 and 7.47 respectively.  Lot 3 on the other hand, has a variance of about 170, which is out of the requirement of under 100 PSI. 
