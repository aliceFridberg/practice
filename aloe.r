aloe.dat<- read.csv("Cancer_aloe_juice.csv")
aloe.dat
attach(aloe.dat)

options(contrasts=c("contr.sum","contr.poly"))

ID.1 <- c(ID,ID,ID)
TRT.1 <- c(TRT,TRT,TRT)
nsub <- length(ID)
Time <- c(rep(0,nsub),rep(2,nsub),rep(4,nsub))

Y <- c(TOTALCIN,TOTALCW2,TOTALCW4)

cbind(ID.1,TRT.1,Time,Y)
plot(factor(TRT.1),Y)
plot(factor(Time),Y)

summary(aov(Y ~ TRT.1*factor(Time)))

summary(aov(Y ~ TRT.1*factor(Time) + Error(factor(ID.1))))




