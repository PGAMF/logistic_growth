library(ggplot2)


#define parameters from model

N0 <- exp(6.883e+00)  # Initial population size derived from estimates
r <- 1.004e-02        # Estimated growth rate
K <- 6e+10        # Carrying capacity estimate

# Define the logistic growth function
logistic_fun <- function(t) {
  (N * K * exp(r * t)) / (K - N + N * exp(r * t))
}

# Define the exponential growth function
exp_fun <- function(t) {
  N0 * exp(r * t)
}

ggplot(aes(x = t, y = N), data = growth_data) +  
  geom_function(fun = logistic_fun, colour = "darkseagreen", size=1.2) +
  geom_function(fun = exp_fun, colour = "coral1", size=1.2)+
  scale_y_continuous(trans = 'log10')+
  labs(
    title = "Comparison of Logistic and Exponential Growth Models",
    x = "Time (minutes)", 
    y = "Population Size (Log N)"
  )




