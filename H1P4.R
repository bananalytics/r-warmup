#H1P4.r
# (c) Filip Wodnicki 2017
# This script solves the homework problem.
# We make a random distribution, histogram it, and get the cumulative relative frequency.
# The point is to see that random data displays a uniform distribution

# first we create a lot of random data between -1 and 2
x1 = runif(1500,-1,2)

#let's take a look
head(x1)

#we set our breaks for the histogram to be each 1/20 of the length, which is 3. So 3/20'ths long.
breaks = seq(-1, 2, by=(3/20))

#Gimme an H! - I-S-T-O-G-R-A-M. Ok, not that catch.
hist(x1,breaks,main="Histogram of Generated Data",xlab="Value")

# we make a new copy of our data
dataset = x1
#breaks = seq(-1, 2, by=(3/20)) #we already did this, yo
dataset.cut = cut(dataset, breaks, right=FALSE) #cut it up into chunks
dataset.freq = table(dataset.cut) #get the number of observations per chunk

#let's take a look
head(dataset.freq)

#now we start to make a cumulative frequency
dataset.cumfreq = cumsum(dataset.freq)
dataset.cumrelfreq = dataset.cumfreq / length(x1) #and divide by the total so it's relative and sums to one.

#let's take a look
head(dataset.cumfreq)
head(dataset.cumrelfreq)

#now we bind 'em together by column
cbind(dataset.cumfreq, dataset.cumrelfreq)

# add zero because the number of chunks is one (1) less than the number of breakpoints.
cumrelfreq0 = c(0, dataset.cumrelfreq)

#plotting time. breaks vs. cumulative relative frequency
plot(breaks, cumrelfreq0, main="Cum. Rel. Freq. of Generated Data",xlab="Generated value",ylab="Cumulative relative frequency")
#fill in the lines
lines(breaks, cumrelfreq0)
