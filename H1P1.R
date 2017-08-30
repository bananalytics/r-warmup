#H1P1.r
# (c) Filip Wodnicki 2017
# This script solves the homework problem.
# We plot the binomial distribution 3 times and then create a modified boxplot of our data.


#this is our series of trials
k <- 1:60 

#first we get the dbinom, or probability of x number of succesful outcomes

trial1a <- dbinom(k, size=60, prob=0.3) 

#now we plot that
plot(k,trial1a,main="Binomial distribution for p=0.3",xlab="No. Successful Trials",ylab="Probability")
lines(k,trial1a) #add lines


#this calculates the probability of a x successful trials
trial1 <- rbinom(k, size=60, prob=0.3) 
summary(trial1)
sd(trial1)

#second repetition for p=0.5

trial2a <- dbinom(k, size=60, prob=0.5) 
plot(k,trial2a,main="Binomial distribution for p=0.5",xlab="No. Successful Trials",ylab="Probability")
lines(k,trial2a)
trial2 <- rbinom(k, size=60, prob=0.5)
summary(trial2)
sd(trial2)

#second repetition for p=0.8

trial3a <- dbinom(k, size=60, prob=0.8) 
plot(k,trial3a,main="Binomial distribution for p=0.8",xlab="No. Successful Trials",ylab="Probability")
lines(k,trial3a)
trial3 <- rbinom(k, size=60, prob=0.8)
summary(trial3)
sd(trial3)

#finally we boxplot the result (not probability!) data

boxplot(trial1,trial2,trial3,main="Boxplots for each probability",names=c("p=0.3", "p=0.5", "p.0.8"),xlab="Probability",ylab="No. Successful Trials")

