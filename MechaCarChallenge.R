# Loading packages dplyr
library(dplyr)

# Deliverable 1

MechaCarMpgData <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F) #import dataset

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCarMpgData) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCarMpgData)) # summarize linear model

# p-value = 5.35e-11
# Multiple R-squared: 0.7149
# Adjusted R-squared: 0.6825

# ----------------------------
# Deliverable 2

SuspensionCoilData <- read.csv('Suspension_Coil.csv',check.names = F, stringsAsFactors = F) #import dataset

# creating total summary
total_summary <- SuspensionCoilData %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) 

# creating lot summary
lot_summary <- SuspensionCoilData %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

# ----------------------------
# Deliverable 3
# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(SuspensionCoilData$PSI, mu = 1500)
# p-value = 0.06028

# Determine if the PSI for each lot is statistically different from the population mean of 1500 pounds per square inch
Lot1 = subset(SuspensionCoilData, Manufacturing_Lot == 'Lot1')
Lot2 = subset(SuspensionCoilData, Manufacturing_Lot == 'Lot2')
Lot3 = subset(SuspensionCoilData, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168