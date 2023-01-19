# Statistical Inference with R
Review of MS-C1620 Statistical Inference @Aalto University

Author:  Taha Heidari

Email: firstname.lastname@aalto.fi

---

<a id='TOC'></a>

>🔝	<a href='#TOC'><b>Table of Contents</b></a>
>> The aim of this repo is to build a foundation in  Statistical Inference with R. 
>> * <a href='#1.0'> Large of large Numbers</a>




<a id='1.0'></a>
## 1- Getting familiar with Law of Large Numbers (LLN)
> If you increase the number of observations (sample size), the sample moments will converge to the population moments (Law of Large numbers)
>> In the below example, we assume that we have a population of mean = 0 and standard deviation = 1 from a Normal Distribution. If you increase the number of samples you see that the histogram plot will get similar to the Normal Distribution with those population moments (mean,std). 
>>>**hist(X,breaks=5)**
>>>>Breaks: bins/class intervals (Custom Number of bins)
>
>>>**hist(X,main="struge")** 
>>>>Struge method for calculating the number of bins
> ```R
> #============================
> #    Normal Distributions
> #============================
> # Create a vector of random numbers
> # from a Normal Distribution
> # with mean = 0, sd=1
> X = rnorm(100,mean=0,sd=1)
> # Calculate mean(X); sd(X); var(X); min(X); max(X)
> mean(X); sd(X); var(X)
> # Histogram plot with number of bins
> # Breaks: bins/class intervals 
> hist(X, breaks=5) 
> hist(X,main="struge")
> ```


## 2- Confidence Intervals
```R
data("Salaries") 397 #sample size from a population
x <- Salaries
n <- length(x)
boxplot(x)
hist(x)
mean(x)
skewness(x)

#------
x2 <- rnorm(20)
boxplot(x2)
skewness(x2) #+ or -

#------
x2 <- rnorm(200)
boxplot(x2)
skewness(x2) #+ or -
```

> sample statistic
> population parameter
> confidence interval 
	> > * population mean confidence interval with student-t
	>> * bootstrap method for other population parameters like population mean, variance, skewness, standard deviation, ...
    >>> **bootstrap**
	>> >	* create pseudo sample (random sampling with replacement: resampling) with the same size 
	>>> * computationally cost (new) 100 or 1000 times
* ideally we wan to resample from the real population but bootstrapping seems like getting sth from nothing as it is resampling the only sample we have from the population 


```R
B <- 1000
res <- rep(0, B)

for (b in 1:B){
	res[b] <- mean(sample(x, n, replace = TRUE)) #skewness or other parameters
}

hist(res)

# 95%
ci_bs <- quatile(res, probs = c(0.025,0.975))
abline(v = ci_bs, lwd = 2, col = 2)
ci_bs


ci_ex <- c(mean(x)-1.96*sd(x)/sqrt(n), mean(x)+1.96*sd(x)/sqrt(n))
abline(v = ci_ex, lwd = 2, col = 3)
ci_ex
```

>🔝	<a href='#TOC'><b>Table of Contents</b></a>


> Written with [StackEdit](https://stackedit.io/).
