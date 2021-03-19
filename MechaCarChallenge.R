library(dplyr)
library(tidyverse)
# Performing Linear Regression on MPG data
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,  data=MechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))

# Creating Visualizations for the Trip Analysis
suspension_coils <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)
total_summary <- suspension_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 
lot_summary<-suspension_coils%>% group_by(Manufacturing_Lot)%>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI),Standard_deviation_PSI=sd(PSI))
head(lot_summary)



