#load packages
library(dplyr)

#import MechaCar
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#linear regression w/ summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))


#import suspension data
Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#summary
total_summary <- Suspension %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 
#lot summary
lot_summary <- Suspension  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')  
#all lots T
t.test(Suspension$PSI,mu = 1500)

#Lot 1 T
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

#Lot 2 T
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

#Lot 3 T
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

