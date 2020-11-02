#Deliverable 1: Linear Regression to Predict MPG
library(dplyr)
##Import and read file as dataframe
car_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)
#Perform linear regression
car_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_data)

summary(car_lm)

#Deliverable 2: Create Visualizations for the Trip
coil_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F, check.names = F)

#Create total summary dataframe
total_summary <- coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Create lot summary dataframe
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Deliverable 3:

#t.test
t.test(coil_data$PSI,mu = 1500)
#subset
#Lot 1
t.test(subset(coil_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
#Lot 2
t.test(subset(coil_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
#Lot 3
t.test(subset(coil_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)