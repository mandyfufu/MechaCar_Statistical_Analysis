# Module 16 Challenge: Mecha Car Statistical Analysis

## PART 1 => Linear Regression to Predict MPG
In this analysis we’re looking at a dataset of 50 records of MechaCars prototype to identify variables that contribute to mpg performance. We are looking are the following variables to build a linear model to predict the mpg of these prototypes: Vehicle length, Vehicle weight, Spoiler angle, Drivetrain, and, Ground clearance

![This is an image](/resources/mpg_linear_reg.png)


Based on the test results, we can confidently say that both the vehicle length and ground clearance contributes to the prototype's mpg performance. We can also conclude that the slope of the model is not zero because of the p-value. With the r-squared and p-value we can say that this model does predict the mpg of MechaCar prototypes effectively.

## PART 2 => Summary Statistics on Suspension Coils
Total_Summary:

![This is an image](/resources/suspension_total_summary.png)






Lot_Summary:

![This is an image](/resources/suspension_lot_summary.png)

Per the design specifications on suspension coils, the variance must not exceed 100 lbs per square inch, all manufacturing lots meet this criteria with the exception of Lot 3 where it exceeds the threshold. 

## PART 3 => T-Tests on Suspension Coils
Based on the t-test results below we can not rule out the null hypothesis for the entire dataset as an aggregate level. However, if we breakdown the Manufacturing lots and follow the standard significance level of 0.05%, we can rule out the null hypothesis for Lots 2 & 3.

T-test for all Manufacturing Lots:

![This is an image](/resources/t_test.png)

T-test for Manufacturing Lot 1:

![This is an image](/resources/t_test_lot1.png)


T-test for Manufacturing Lot 2:

![This is an image](/resources/t_test_lot2.png)


T-test for Manufacturing Lot 3:

![This is an image](/resources/t_test_lot3.png)

## PART 4 => Study Design: MechaCar vs. Competition

In addition to the factors we’ve tested above, and from a consumer’s perspective we can also include 2 additional variables (horsepower, cost, and fuel efficiency) to quantify MechaCar’s performance against its competition. 

We will be testing cost and horsepower
The null hypothesis is cost and horsepower has no correlation to performance
First we need to identify the hypothesis/null hypothesis, compute the p-value and perform a t-test to evaluate the null hypothesis. The next step is to quantify the correlation by calculating the correlation coefficient. Finally we apply a linear regression model to quantify and measure the variability of the correlated variables. 
We would data from both MechaCar plus its competitor along with all the variables we want to test. Ideally the original dataset + the additional attributes we want to test. 

