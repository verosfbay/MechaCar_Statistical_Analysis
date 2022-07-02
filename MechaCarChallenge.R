#Deliverable 1
library(dplyr)
MechaCar <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
head(MechaCar)
#perform linear regression using lm function
MechaCar_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =MechaCar)
#determine p-value and r-squared value and save  in GitHub repository
summary(MechaCar_lm)

#Deliverable 2
Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
#using summarize function
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
#create dataframe based on Manufacturing_lot by using group_by function
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')



