#Script to plot data and model

growth_data <- read.csv("experiment.csv")

#Define the function for logistic growth
logistic_fun <- function(t) {
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  return(N)
}

# Set parameters for the logistic model. The values were generated from the models in Fit_linear_model.R
N0 <- exp(6.883e+00)      # Initial population size (From model1)
r <- 1.004e-02       # Growth rate (From model1)
K <- 6.000e+10       # Carrying capacity (From model2)

# Plot the data and the logistic model
ggplot(aes(x = t, y = N), data = growth_data) +  
  geom_function(fun = logistic_fun, colour = "red") +
  geom_point() +
  scale_y_continuous(trans = 'log10') + 
  xlab("Time (Minutes)") +
  ylab("Population Size (N)")



