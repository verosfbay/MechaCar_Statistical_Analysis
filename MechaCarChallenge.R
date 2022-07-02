#Deliverable 1
library(dplyr)
MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MechaCar)
#perform linear regression using lm function
MechaCar_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =MechaCar)
#determine p-value and r-squared value and save  in GitHub repository
summary(MechaCar_lm)

