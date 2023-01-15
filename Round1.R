## 1
#https://data.oecd.org/price/inflation-cpi.htm
#https://data.oecd.org/interest/long-term-interest-rates.htm
#https://www.visualcapitalist.com/cp/charting-income-distributions-worldwide/
#https://worldpopulationreview.com/country-rankings/wealth-inequality-by-country
#https://data.oecd.org/healthcare/child-vaccination-rates.htm

## 2) Ctrl + Enter
# a)
x <- rnorm(100,mean=0,sd=1)

# b)
mean(x); sd(x)

# c)
var(x)

# d)
x10 <- rnorm(10,mean=1,sd=3)
x100 <- rnorm(100,mean=1,sd=3)
x1000 <- rnorm(1000,mean=1,sd=3)
x100000 <- rnorm(100000,mean=1,sd=3)

# e) 
mean(x10); sd(x10)
mean(x100); sd(x100)
mean(x1000); sd(x1000)
mean(x100000); sd(x100000)
# Law of large numbers ! Conveging sample moments to population moments if number of samples are large enough

# 3)

# a)
heights <- c(180,170,215,155,110,165,178,165,199,166)

# b)
hist(heights)

# c)
heights_ <- rnorm(3000, 170, 10)
hist(heights_,breaks=10)
heights_ <- rnorm(300000, 170, 10)
hist(heights_,breaks=100) # sample dis or emperical dis converge to population dist
min(heights_);max(heights_)
# Law of large numbers

## 4)

# a) ?factor ?sample is evenly distributed
eye_colors <-sample(c(1,2,3), 15, replace=TRUE) # green=1,brown=2,blue=3
eye_colors <- factor(eye_colors,labels= c("Green","Brown","Blue"))
table(eye_colors)

# b) 
barplot(table(eye_colors))
barplot(table(eye_colors)/15) #Density over the size of the sample size
# if the number of samples are large enough the above density function converge to the population

# TEST

eye_colors <-sample(c(1,2,3), 100000, replace=TRUE) # green=1,brown=2,blue=3
eye_colors <- factor(eye_colors,labels= c("Green","Brown","Blue"))
table(eye_colors)

# b) 
barplot(table(eye_colors))
barplot(table(eye_colors)/100000)

## Homework data() press Enter then choose one like data("JohnsonJohnson") press Enter then you have it as JohnsonJohnson

