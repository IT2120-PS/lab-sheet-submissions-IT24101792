##Setting the directory
setwd("C:\\Users\\dell\\Desktop\\PS LABS\\IT24101792 LAB06")
getwd()

###LAB SHEET

##Question 01
#Part 1
#Binomial Distribution
#Here, random variable X has binomial distribution with n=44 and p=0.92

#Part 2
#It asks to find P(X=40) . Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dbinom" command.
dbinom(40,44,0.92)

#Part 3
#It asks to find P(X <= 35). Following command gives the cumulative
#probability ( <= ), if ""lower. tail" argument equals to "TRUE".
pbinom(35, 44, 0.92, lower.tail = TRUE)

#Part 4
#It asks to find P(X>=38). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(X>=38) = 1-P(X<38) = 1-P(X <= 37)
#Then command will be as follows.
1- pbinom(37, 44, 0.92, lower.tail = TRUE)
#Or else following command can also used by keeping argument "lower. tail" as "FALSE".
#Here, when that argument is "FALSE", it means that P(X>37) which is same as P(X>=38).
pbinom(37, 44, 0.92, lower.tail = FALSE)

#Part 5
#It asks to find P(40 <= X <= 42). This can find using "pbinom" command as follows.
#You need to rearrange the probability statement as follows.
#P(40 <= X <= 42)=P(X <= 42)-P(X <= 39)
#Then command will be as follows.
pbinom(42, 44, 0.92, lower.tail = TRUE)-pbinom(39, 44, 0.92, lower.tail = TRUE)

##Question 02
#Part 1
#Number of babies born in a hospital on a given day

#Part 2
#Poisson distribution
#Here, random variable X has poisson distribution with lambda=5

#Part 3
#It asks to find P(X=6) . Following command gives the density.
#In other words, probability of getting an exact value can be calculated using "dpois" command.
dpois (6,5)

#Part 4
#It asks to find P(X>6). This can find using "ppois" command as follows.
#If you keep "lower. tail" argument as "TRUE", that means P(X <= 6).
#Since we need P(X>6), keep the "lower. tail" argument as "FALSE".
ppois(6, 5, lower.tail = FALSE)

###Exercise

##Question 01
# 1. Binomial Distribution
# 2. 
1 - pbinom(46, size=50, prob=0.85)

#alternate method
sum(dbinom(47:50, size=50, prob=0.85))

##Question 02
# 1. X = number of customer calls received in one hour
# 2. Poisson distribution
# 3. P(X = 15) when λ = 12
# Probability of exactly 15 calls
dpois(15, lambda = 12)




