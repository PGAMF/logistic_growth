#Script to plot the logistic growth data

growth_data <- read.csv("experiment.csv")

install.packages("ggplot2")
library(ggplot2)

#Plot out the data from the experiment csv with linear scales
ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  xlab("Time (minutes)") +
  ylab("Population Size (N)") +
  theme_bw()

#Plot out the data from the experiment csv with log10 scale in Y
ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  xlab("Time (minutes)") +
  ylab("Population Size (N)") +
  scale_y_continuous(trans = 'log10') +
  theme_bw()

