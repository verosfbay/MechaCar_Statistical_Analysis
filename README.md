# MechaCar_Statistical_Analysis
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Summary Statistics on Suspension Coils
In the total summary, the variance is less than the 100 pounds requirement. In the lot summary, lot 1 and 2 meet the requirement while lot 3 does not.

<img width="415" alt="Screen Shot 2022-07-02 at 12 18 51 PM" src="https://user-images.githubusercontent.com/95447175/177013722-1ae379d3-48a6-4f92-946c-500e29a901e0.png">

<img width="476" alt="Screen Shot 2022-07-03 at 9 25 26 AM" src="https://user-images.githubusercontent.com/95447175/177046402-3d6be67f-90fb-454d-be78-426b687534aa.png">

<img width="487" alt="Screen Shot 2022-07-03 at 9 25 36 AM" src="https://user-images.githubusercontent.com/95447175/177046405-013841f2-6253-45c1-bbcb-143f36e6a69a.png">

<img width="467" alt="Screen Shot 2022-07-03 at 9 25 42 AM" src="https://user-images.githubusercontent.com/95447175/177046412-9e5e6753-3f1d-441e-82c0-4b751648a244.png">

For the t-test, the p-value is not less than the significance level of 0.05, therefore the sample mean is not statistically different from the population mean of 1500 PSI. We will not reject the null hypothesis. However, the p-value of Lot 3 is statistically different from the population mean so we will reject the null hypothesis.

## Study Design: MechaCar vs Competition.
In a statistical study that can quantify how the MechaCar performs against the competition, I would test the following metrics: safety rating, cost and fuel efficiency. I would test safety rating because that is probably the most important thing about a car, secondly, cost because most people care a lot about cost and want to get their money’s worth. Lastly, I would test fuel efficiency and potentially how friendly the car is to the environment. Electric and hydrogen vehicles are gaining popularity and utility, and is something that every car manufacturer should think about including in their car portfolio. 

The null hypothesis in testing the MechaCar against a competitor could be: the average fuel efficiency of the MechaCar is not significantly better from the average fuel efficiency of a Competitor model. 
The alternate hypothesis then would be: the average fuel efficiency of the MechaCar is significantly different from the average fuel efficiency of a Competitor model. 

I would perform a two sample t-test to compare the mean fuel efficiency of MechaCar with the mean fuel efficiency of the Competitor model. I would choose this type of test because it allows me to see if there a statistical difference between the distribution means from two samples. 

In order to perform the test, we need to have as large a sample as possible from both MechaCar and a Competitor car model. At least 50 cars from each would do. I would also make sure that the Competitor model is a similar offering (similar in size and concept) to make testing sensible. 
