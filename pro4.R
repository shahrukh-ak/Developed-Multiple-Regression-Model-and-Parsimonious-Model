#Importing the data in R and printing first 5 observations.

data=read.table("http://users.stat.ufl.edu/~winner/data/nuclear_time.dat")
head(data,5)


#Displaying the completion time of the task based on nationality by making box plot.

names(data)
boxplot(data$V3 ~ data$V2,xlab="nationality",ylab="time",col=c(3,4),main="boxplot b/w time & nationality",col.main=45,col.lab=21)


#Determining significance difference in the completion time between US and non-US workers.

t.test(data$V3~data$V2)


Welch Two Sample t-test

data:  data$V3 by data$V2
t = -3.8266, df = 52.494, p-value = 0.0003475
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -311.99847  -97.37296
sample estimates:
  mean in group 0 mean in group 1 
235.2000        439.8857

#since p<0.05 therefore there is significance difference






