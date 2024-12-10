# logistic_growth
## Question 1: Analysis
### 1.Plot the data

When we plot the raw data from (experiment.csv (source: https://osf.io/gm2hq/files/osfstorage)) with x axis as time (t) in minutes and y axis as the number of cells (N), we see a classic sigmoidal curve produced. This curve plateaus as it approaches the carrying capacity (k).

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

We can then fit a linear model to give us the y intercept ($$\ln(N_0)$$) and the slope, $$r$$:

- $r$ = 1.004e-2 = 0.01004
- $\ln(N_0)$ = 6.883 $\quad\therefore\quad N_0 = e^{6.883}$ = 975.5486

This allows us to model the exponential growth portion of the growth curve, however we still need to identify the value for carrying capacity ($k$)

**Assumption 2: $N(t) = K$**

-As time ($t$) approaches infinity, we assume the population size ($N$) reaches caryying capacity $k$. 

```math
\begin{equation}
\lim\limits_{t \to \infty} N(t) = K
\end{equation}
```
-Therefore, when t is large, we can represent the growth curve with the equation
```math
\begin{equation}
 N(t) = K
\end{equation}
```
-In this model, we use $t > 3000$ as at this point the curve has levelled off in the logistic growth curve.
-The intercept of this linear model will represent the carrying capacity ($K$):
- $$K = 6.000 \times 10^{10}$$
 
### 3.  **Plot data and assess the fit of the model**

The estimates we have derived from the linear approximations above can be used to create a logistic growth curve that should match the growth curve we saw in the raw data.

![image](https://github.com/user-attachments/assets/18ec7494-35db-43d0-97af-8bb799e7512e)
Figure 3 (growth data (black) and logistic growth model (red)

We can see that the model fits the data well. 

### 4  **Results**

**i. Parameter Estimates:**

Based on two linear models, we derived the key parameters for the logistic growth curve:

- Initial population size ($N_0$) = $e^{6.888}$ = 975.5486
- Growth rate is ($r) = 0.01004$
- Carrying capacity ($K) = 6.000 \times 10^{10}$$

**ii. Model Fit to the Data:**

The logistic growth model was plotted with the growth data to assess how well it fits (figure 3).This growth data is from the csv "experiment.csv" (source: https://osf.io/gm2hq/files/osfstorage) From this plot, we can see that model shows a close fit to the real data, indicating that the estimated parameters are appropritae to descibe the growth of the bacterial population.

## Question 2: Predicting Population Size Under Exponential Growth

The parameters estimated above can be used to calculate the population size at different times. In this case we will calculate the population size at 4980 mins, assuming exponential growth.

Under exponential growth, the change in poulation size can be modelled by:

 $$
N(t) = N_0 e^{rt}
$$

based on the first linear model we created we have the estimates for gropwth rate ($r$) and intital population size ($N_0$):

- $r$ = 0.1004
- $N_0$ = 975.5486

and $t$ = 4980 minutes. 

We can substitute these values into the equation to give us

$$N(t) = 975.5486 \times e^{0.01004 \times 4980} = 5.054 \times 10^{24}$$ 

 **Comparison with logistic growth model**

We can also estimate the population size at 4980 with a logistic growth model using the same parameter estimates.

log growth equation:

$$
N(t) = \frac{K N_0 e^{rt}}{K - N_0 + N_0 e^{rt}}
$$

Log growth equation with parameters and t=4980

$$
N(t) = \frac{(6.000 \times 10^{10}) \times (e^{6.883}) \times (e^{0.01004 \times 4980})}{(6.000 \times 10^{10}) - (e^{6.888}) + (e^{6.883} \times e^{0.01004 \times 4980})} = 6.000 \times 10^{10} = K
$$

From the logstic growth model we can see that at 4980 minutes the population size has reached the poulation capacity $K$.

## Question 3: comparing exponential and logistic growth curves ##

Both models of growth were plotted, giving the figure below. (code in Model_comparison.R)

![image](https://github.com/user-attachments/assets/49b32b0f-4790-468b-9670-90aa6f0b497f)

figure 4: comparison of exponential (coral) and logistic (green) growth curves 






