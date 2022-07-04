#Deliverable 1
library(dplyr)

#import mechcar.csv as a dataframe 
library(tidyverse)
mecha_mpg = read.csv(file = "./MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#Linear regression lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#Summary function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 


#Deliverable 2 

# import suspension.csv file
mecha_coil <- read.csv(file='./Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# create total summary dataframe using summarize()
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Var_PSI=var(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
# summary using grouby()
lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Num_Coil=n(), .groups = 'keep') 
#Deliverable 3 

#use t-test function to determine PSI acrsoos all manufacturing lots
t.test(mecha_coil$PSI,mu=1500)

# write <3 scrits using t.test and its subset argument to determine if the PSI is statistcally different. 
#write on for all 3 lots

lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)