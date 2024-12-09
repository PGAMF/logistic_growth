# logistic_growth
R scripts for a reproducible analysis of logistic growth


## Question 1: Analysis
### 1.Plot the data

When we plot the raw data from (experiment.csv) with x axis as time (t) in minutes and y axis as the number of cells (N), we see a classic sigmoidal curve produced. This curve plateaus as it approaches the carrying capacity (k).

![image](https://github.com/user-attachments/assets/24b9ec6f-79fa-47d9-8a50-c6ad70701e6f)
figure 1. Plot of raw data with linear scales

in order to interpret the growth more easily, we can log transform the y axis. This makes the exponential growth at the start of the curve linear. From this we see there is a linear increase in the growth rate until it levels off as sit appraoches the carrying capacity. 

![image](https://github.com/user-attachments/assets/5543b7c3-b451-48d0-a4b3-6bd888fc2671)
figure 2. pLot of raw data with log scale in y axis

### 2. Fit a linear model

We have seen that the data follows logistic growth. Logistic growth can be modelled by the equation:

$$
N(t) = \frac{K N_0 e^{rt}}{K - N_0 + N_0 e^{rt}}
$$

In order to estimate the intial population size (N0), carrying capacity (K), and growth rate (r) we can fit the data to a linear model. To do so, we make some assumption about the growth curve

**Assumption 1:** $K \gg N_0$ **and** $t$ **is small**

If we assume that carrying capacity K is much larger than the initial population and that time is small, then growth must be exponential. 

With these assumptions, we can simplify the log growth equation:

$$
N(t) = \frac{K N_0 e^{rt}}{K - N_0 + N_0 e^{rt}} \quad\to\quad \ln(N) = \ln(N_0) + rt
$$

This new equation is equivalent to a straight line with the form:

$$
y=mx+c
$$

We can then fit a linear model to give us the y intercept (\ln(N_0)) and the slope, r. This gives 

