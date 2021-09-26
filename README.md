# MechaCar_Statistical_Analysis

## Linear Regression to predict MPG
After running a multiple linear regression and summarizing it, we can see that:
- Vehicle weight, spoiler angle, and AWD provided non-random amounts of variance to the MPG values in the dataset, as seen by the pr(>|t|) values being larger than the designated significance level of 0.05. 
- The slope of the linear model is not considered zero based on the p-value being lower than the signficance level of 0.05.
- This model can predict the MPG of MechaCar prototypes pretty strongly. The regression resulted in a R-squared of .7149, meaning the model can predict MPG values correctly about 71% of the time.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When looking at the total summary, we can see that as a whole the suspension coils are up to par given the variance of 62.29. However when grouped by lot, we can see that lot 3 has a variance of 170.28, far exceeding the 100 PSI threshold.

## T-Tests on Suspension Coils
Several T-Tests were performed in order to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

- T-Test all lots: the T-Test performed on all lots had a mean of 149.78 and a p-value of 0.06028. That value exceeds our 0.05 significance level, meaning we can assume the distribution of the data isn't significantly different from the normal distribution.

- Lot 1 T-Test: Lot 1 had a sample mean of 1500 and a p-value of 1, meaning the sample mean and population mean do not differ significantly.

- Lot 2 T-Test: Lot 2 had a sample mean of 1500.2 and a p-value of 0.61, meaning the sample mean and population mean do not differ significantly.

- Lot 3 T-Test: Lot 3 had a sample mean of 1496.14 and a p-value of 0.04, meaning the sample mean and population mean do significantly differ.


## Study Design: MechaCar vs Competition