#Next, include a setwd() to where you want your Script to live
setwd("/cloud/project/")

#Then, read in the CS_Data_Demographics.csv table to R and create Barplot using what we learned above.
read.csv("CS_Demographics.csv")
# This dataset shows the number Females and Males who have careers in Computer Science and is stratified 
#by ethnicity and race

CS_dem=read.csv("CS_Demographics.csv", row.names = 1, header = TRUE)

#Starting with the base requirements for the barplot() function, make the plot look pretty!
barplot(t(CS_dem), beside=TRUE)

# Checklist
# A. Scale the numbers to fit in the y-axis of the plot -- save to new variable
# B. Change the rownames to fit on the x-axis of the plot
# C. Label the axis 
# D. Give plot a name
# E. Change the colors of the plot for fun
# F. Export barplot as a pdf file to your desktop

barplot(t(CS_dem_short),beside=TRUE,las=1,cex.axis=1,cex.names = 1,xlab="Demographics",ylab="Number of People in Each Demographic(1x10^5)",col=c("pink", "#e0218a"),ylim=c(0,15),main="Race Demographics of Female / Male")

por(mar = c (5,5,2,2))

barplot(t(CS_dem_short),beside=TRUE,las=1,cex.axis=1,cex.names = 1,xlab="Demographics",ylab="Number of People in Each Demographic(1x10^5)",col=c("pink", "#e0218a"),ylim=c(0,15),main="Race Demographics of Female / Male")
> legend("topleft", legend=c("Female", "Male"), fill=c("pink", "#e0218a"), cex=0.6)
> legend("top", legend=names2, col=c(1), cex = 0.5)