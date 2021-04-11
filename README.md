# MechaCar_Statistical_Analysis

This project involved the usage of the R programming language to analyze the production data from an automobile manufacturing plant. These insights will help in understanding the relationship between the different variables within the dataset as well as provide some actionable insights for the team. 

[Click here to view the R script](https://github.com/dkatragadda/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R "Click here to view the R script")

## Linear Regression to Predict MPG

![Linear Regression to predict mpg](https://github.com/dkatragadda/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable%20_1_LM_to_predict_mpg.png)

This test was to identify if there is a relationship between mpg and the other variables in the dataset such as vehicle length, vehicle weight etc. 

The variables that provided a non-random amount of variance to the mpg values in the dataset were the vehicle length and ground clearance along with the intercept. These variables provided the non-random amount of variance due to the low p-values for each of these variables.

The p-value for the entire linear regression was 5.35e-11 which indicates a very low p-value. This implies that we can reject the null hypothesis that there is no relationship between mpg and the other variables in the dataset. The slope of the line is not zero which is proved because we are rejecting the null hypothesis. 

This linear model is effective in predicting the mpg of the MechaCar prototypes based on the low p-value for the model as well as the reasonably high adjusted R-square value 0.6825 which means that this model can explain the mpg metric and the variance 68% of the time. 

## Summary Statistics on Suspension Coils

![Suspension Coils PSI summary](https://github.com/dkatragadda/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_2_part_1.png)

![Suspension Coils PSI summary by lots](https://github.com/dkatragadda/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_2_part_2.png)

The design specifications for the suspension coils dictates that the variance of the suspension coils must not exceed 100 pounds per square inch. When we evaluate the summary statistics across the whole dataset (or all the lots), the variance is 62.29 which is in line with the design specs. 

When we evaluate the summary statistics by lots (lot1, lot2 and lot3), we notice some differences which are stated below. 

Lot 1 has a low variance of 0.98 which indicates that it is inline with the design specs.
Lot 2 also has a low variance of 7.47 when compared with the limit of 100 pounds per square inch. 
Lot 3 has a higher variance of 170.29 which implies that lot 3 by itself may not be in line with the overall design specs and the suspension coils from lot 3 may need to be further investigated. 

## T-Tests on Suspension Coils

![One sample t test for total dataset](https://github.com/dkatragadda/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_part_1.png)

![One sample t test by lot](https://github.com/dkatragadda/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_part_2.png)

The p-value for the one sample t-test for the total population is 0.06028 which is greater than 0.05 and hence we fail to reject the null hypothesis that there is no difference between the sample mean and the population mean. 

#### Lot 1 Analysis
The p-value of the 1 sample t-test on Lot 1 is 1 which means that we fail to reject the null hypothesis and the mean of the sample dataset is the same as the same as the population dataset. 

#### Lot 2 Analysis
The p-value of the 1 sample t-test on Lot 2 is 0.6072 which means that we fail to reject the null hypothesis and the mean of the sample dataset is the same as the same as the population dataset.

#### Lot 3 Analysis
The p-value of the 1 sample t-test on Lot 3 is 0.042 which means that we can reject the null hypothesis and hence there is a difference in the mean of the sample set versus the population dataset. The confidence interval of lot 3 does not include the predicted mean of the population dataset and the confidence interval is larger which can indicate lesser precision compared to the other lots. 

## Study Design: MechaCar vs Competition

One of the metrics that will be good to compare the MechaCar vs competition is horsepower. Horsepower would help in comparing the car's performance with the competition. 

The null hypothesis is that the horsepower (dependent variable) of MechaCar has no relation with the other variables (independent variables) in the dataset. The alternate hypothesis is that there is an impact of the independent variables on the dependent variable. 

We can run a multiple linear regression to study if the independent variables can explain the variance in the horsepower of the car. Based on the p-values and the adjusted R-square values, we can determine if there is any statistical impact of the independent variables on horsepower. 

The independent variables that would be necessary to collect are the displacement of the engine, number of cylinders, vehicle weight, drivetype. Studying the impact of these variables which help determine if there is an impact on horsepower and this will help in comparing the MechaCar prototype against competition. 
