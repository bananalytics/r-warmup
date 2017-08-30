#H1P3.r
# (c) Filip Wodnicki 2017
# This script solves the homework problem.
# We plot waiting time as a function of eruption duration and train a linear model.

# Save the faithful data.frame to a local variable
geyser <- faithful

# We add a column called type, filled with an assessment of the the eruption duration.
# "Short" is less than 3.1, everything else is "long"
geyser$type <- ifelse(geyser$eruption < 3.1 , "short", "long")

#here's what that new column looks like
head(geyser)


#boxplot time!
#col=topo.colors(2) assigns colors to our two boxplots
# "create a boxplot of waiting time data by type"
boxplot(waiting ~ type,data = geyser, main="Boxplot of Waiting time by type",xlab="type",ylab="Waiting time (min)",col=topo.colors(2))
legend("topright", inset=.02, title="type",c("long","short"), fill=topo.colors(2), horiz=TRUE, cex=0.8)
#legendary!

# now we do it all over again for eruption duration
boxplot(eruptions ~ type,data = geyser, main="Boxplot of Eruption duration by type",xlab="type",ylab="Eruption duration (min)",col=topo.colors(2))
legend("topright", inset=.02, title="type",c("long","short"), fill=topo.colors(2), horiz=TRUE, cex=0.8)

# legends
# http://drekendrop.blogspot.com/2013/08/create-boxplot-with-legend-from-text.html

