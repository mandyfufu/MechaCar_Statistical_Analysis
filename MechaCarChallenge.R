library(tidyverse)
library(dplyr)
mpg_df <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
lreg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df) # performing multiple linear reg
lreg
summary(lreg) # find p-value and r-squared value

suspension_df <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary_df <- suspension_df %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI),)
lot_summary_df <- suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI),)
t.test(suspension_df$PSI, mu=mean(suspension_df$PSI))
t.test((suspension_df %>% filter(Manufacturing_Lot=='Lot1'))$PSI, mu=mean(suspension_df$PSI))
t.test((suspension_df %>% filter(Manufacturing_Lot=='Lot2'))$PSI, mu=mean(suspension_df$PSI))
t.test((suspension_df %>% filter(Manufacturing_Lot=='Lot3'))$PSI, mu=mean(suspension_df$PSI))


