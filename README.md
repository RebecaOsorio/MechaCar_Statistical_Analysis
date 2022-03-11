# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
Using the funtion `lm()`, we can obtain a formula for a Linear Regression Model.<br>
<img alt="firstLm" src="https://user-images.githubusercontent.com/90414330/157772234-ab30dc53-04ad-4d8a-be96-493ff6f11b70.png">

<img width="383" alt="firstLm_coefficients" src="https://user-images.githubusercontent.com/90414330/157772231-f5babc78-977a-4622-bb1b-e9dd42698ec9.png"><br>
-  Where we notice that *vehicle weight*, *spoiler_angle* & *AWD* provided a non-random amount of variance.
- The slope of the linear model will be considered to be zero, just by looking at the p-value, which 5e-11.
- With the Multiple R-squared value, we know that the model doesn't predicts effectively the outcome.

## Summary Statistics on Suspension Coils

The MechaCar `Suspension_Coil.csv` dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

The following summary statistics tables show:

|<img alt="total_summary" src="https://user-images.githubusercontent.com/90414330/157774467-435e0c33-9e88-4c56-943f-1f5da00ee1a8.png">|<img alt="lotDemo_summary" src="https://user-images.githubusercontent.com/90414330/157774460-80056593-d4a3-4f10-913a-b0f6f5a25b2f.png">|
|--|--|
|The suspension coil’s PSI continuous variable across all manufacturing lots|Mean, median, variance, and standard deviation PSI metrics for each lot.

And the only lot that has to be checked is the 3rd one.

## T-Tests on Suspension Coils

Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. 

For the first test, we can't say that there's a statistical difference between the sample and the population, since we rejected the null hypothesis if p-value: 0.58 > 0.05.
<img width="457" alt="tTestSample" src="https://user-images.githubusercontent.com/90414330/157775484-d4c1e42e-37c7-4c1b-966e-544694f5aec3.png"><br>

| <img width="415" alt="tTest_lot1" src="https://user-images.githubusercontent.com/90414330/157775488-f8244e30-166c-4486-9bf4-37684a1b35e7.png"> | <img width="446" alt="tTest_lot2" src="https://user-images.githubusercontent.com/90414330/157775491-45a13cd3-a13a-44f4-876d-91821a8eee8d.png"> | <img width="352" alt="tTest_lot3" src="https://user-images.githubusercontent.com/90414330/157775496-f770e9ca-675b-4993-97aa-d6a2b50d06cc.png"> |
|--|--|--|
|  |  | For the this lot, we neither can't reject the null hypothesis |

Therefore the population that most approximates to the production population is the sample from the third lot.

## Study Design: MechaCar vs Competition
To make a comparison between the MechaCar products and the competitor's one, I would use an ANOVA analysis to analyze the distribution between the MPG and the weight of cars with similar characteristics.

Where the hypothesis is that the cars in the same class have the same fuel efficiency.
