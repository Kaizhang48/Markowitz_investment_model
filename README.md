# Markowitz_investment_model
using US stock data to implement Markowitz_investment_model 

DJIA DATA containing the monthly percent price change of the 30 components
of the DJIA from January 2012 to December 2016 (that’s 12 × 5 = 60 items of data per
stock). Compute the sample monthly means and the sample covariance matrix for this
data. Assuming these are the true means and covariances for yet-to-be observed monthly
returns:

(a) Compute the weights of the minimum variance portfolio. What is the formula for the
efficient frontier? Show a plot of the efficient frontier together with the locations of the 30
individual stocks.

(b) Assume the monthly risk-free rate of return is 0.15%. What are the weights of the
market portfolio?

(c) What are the weights of the efficient portfolio corresponding to an expected monthly
return of 0.3%?

Result:
(a)weight of minmum variance portfolio
weight of risk free	0
'MMM'	-25.47%
'AXP'	13.87%
'AAPL'	2.45%
'BA'	-1.24%
'CAT'	-2.87%
'CVX'	-5.57%
'CSCO'	3.78%
'KO'	-6.75%
'DD'	-3.51%
'XOM'	40.01%
'GE'	-5.01%
'GS'	8.60%
'HD'	7.85%
'IBM'	6.12%
'INTC'	-0.29%
'JNJ'	2.09%
'JPM'	-14.13%
'MCD'	20.49%
'MRK'	8.29%
'MSFT'	1.42%
'NKE'	19.41%
'PFE'	-0.83%
'PG'	2.96%
'TRV'	-15.57%
'UNH'	12.81%
'UTX'	6.60%
'VZ'	13.86%
'V'	8.51%
'WMT'	20.13%
'DIS'	-18.03%
![imag](https://github.com/Kaizhang48/Markowitz_investment_model/blob/master/1.png?raw=true)


(b)weight of Market Portfolio
weight of risk free	0
'MMM'	172%
'AXP'	-76%
'AAPL'	-21%
'BA'	0%
'CAT'	-15%
'CVX'	68%
'CSCO'	-19%
'KO'	-105%
'DD'	-16%
'XOM'	-257%
'GE'	106%
'GS'	-6%
'HD'	74%
'IBM'	-36%
'INTC'	-6%
'JNJ'	238%
'JPM'	51%
'MCD'	-135%
'MRK'	63%
'MSFT'	21%
'NKE'	45%
'PFE'	-124%
'PG'	-86%
'TRV'	-3%
'UNH'	93%
UTX'	-74%
'VZ'	0%
'V'	107%
'WMT'	-13%
'DIS'	56%


(c)weight of 0.3% return efficient portfolio
weight of risk free	0.985048305
'MMM'	2.57%
'AXP'	-1.14%
'AAPL'	-0.31%
'BA'	0.00%
'CAT'	-0.22%
'CVX'	1.01%
'CSCO'	-0.29%
'KO'	-1.57%
'DD'	-0.24%
'XOM'	-3.85%
'GE'	1.58%
'GS'	-0.09%
'HD'	1.11%
'IBM'	-0.54%
'INTC'	-0.08%
'JNJ'	3.55%
'JPM'	0.76%
'MCD'	-2.02%
'MRK'	0.94%
'MSFT'	0.31%
'NKE'	0.68%
'PFE'	-1.86%
'PG'	-1.28%
'TRV'	-0.05%
'UNH'	1.38%
UTX'	-1.10%
'VZ'	0.00%
'V'	1.60%
'WMT'	-0.20%
'DIS'	0.83%

the formula of efficient frontier is 
σ^2=1.5348*r^2-0.0124*r+0.00040373
Where r is the given return rate and r >= 0.004(the return of MVP portfolio) and σ is the volatility under the given r.
