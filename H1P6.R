#H1P6.r
# (c) Filip Wodnicki 2017
# This script solves the homework problem.
# Here we view that many random trials result in a Gaussian Distribution.

# first we create random vector and resize it be a matrix
d2 <- runif(4000,-1,2)
dim(d2) <- c(100,40)

#wanna see my d2?
head(d2)

#now we bind the a new column rowsum to the original matrix (Column 41!)
sumz <- rowSums(d2)
d2 <- cbind(d2, sumz)

#take a peek!
head(d2)

x <- sumz 

#we be histogrammin'
h<-hist(x, breaks=10, col="green", xlab="Sum of 40 trials", 
        main="Histogram with Normal Curve")

#we fit a calculated normal distribution to this data
xfit<-seq(min(x),max(x),length=40) #must fit the dimensions
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) #here the calculations happen (mean, sd)
yfit <- yfit*diff(h$mids[1:2])*length(x) #the points are added at the mid-point of the histogram bars

#and finally the lines are overlaid over the histogram. HUZZAH
lines(xfit, yfit, col="blue", lwd=3) #

#code adapted from http://www.statmethods.net/graphs/density.html

# CENTRAL LIMIT THEOREM RUNS YOUR LIFE.
# WHO RUN THE WORLD? CeLT? WHO RUN THE WORLD? CeLT? Nope.
# WHO RUN THE WORLD? Girls.