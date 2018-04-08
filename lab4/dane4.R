mydata <- read.csv("dane4.csv",sep=';')
goodrows <- complete.cases(mydata)
print(goodrows)
mydata1 <- mydata[goodrows,]

meanPM10 <- mean(mydata1$PM10)
sdPM10 <- sd(mydata1$PM10)
meanPM5 <- mean(mydata1$PM5)
sdPM5 <- sd(mydata1$PM5)
