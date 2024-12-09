#Script to estimate the model parameters using a linear approximation


#install.packages("dplyr")
library(dplyr)
growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small

#subset the data so that t<1000 and also log transform the y axis

data_subset1 <- growth_data %>% filter(t < 1000) %>% mutate(N_log = log(N)) 

#Fit a linear model to this subset of the data

model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#The output of this summary tells us the estimate of the y intercept (log size of the population at t=0)
#and the value of R

#Case 2. N(t) = K

# Subset the data again so that t>2250

data_subset2 <- growth_data %>% filter(t > 3000)

# Define the linear model with the assumption that N is constant around the carrying capacity (K)
model2 <- lm(N ~ 1, data_subset2)
summary(model2)

#The output of this will give an estimate for K (the Intercept estimate value)