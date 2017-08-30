#H1P2.r
# (c) Filip Wodnicki 2017
# This script solves the homework problem.
# We plot waiting time as a function of eruption duration and train a linear model.

#first we copy faithful data.frame to our local variable
geyser <- faithful

#now we plot waiting time as a function of eruption duration
plot (faithful$eruptions,faithful$waiting,type="p",xlim = NULL, ylim = NULL, log = "", main = "Waiting vs. Duration Old Faithful", sub = NULL, xlab = "duration (min)", ylab = "waiting (min)")
#data.frame$column


#we train a linear model
model = lm(formula = waiting ~ eruptions, data = faithful)

#display its innards
print(model)

#and add this as a thicker red line.
abline(model,col="red",lwd=2)