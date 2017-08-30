#H1P5.r
# (c) Filip Wodnicki 2017
# This script solves the homework problem.
# Here we are viewing the randomness of nature

# first we create random vector and resize it be a matrix
d <- runif(4000,-1,2)
dim(d) <- c(100,40)

#let's giv'er a whirl
head(d)

#d <- t(d) #transpose d #we could transpose,but we don't want to

#we pick two columns to plot
y1 <- d[,30]
y2 <- d[,17]
x <- seq(-1, 2, by=(3/99)) #divide up the sequence

#here we go!
plot(x,y1,type="n",main="Two Random Distributions: 40 points [-1,2]",xlab="Parameter",ylab="Value")
# "n" type means no points. we can add lines later
lines(x,y1,col="red") #this one will be red
lines(x,y2)
