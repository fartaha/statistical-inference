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

>🔝	<a href='#TOC'><b>Table of Contents</b></a>


> Written with [StackEdit](https://stackedit.io/).
