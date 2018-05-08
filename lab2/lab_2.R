v1 <- 0:5
v2 <- c(2,2,2,1,1,1)
v3 <- seq(0, 1, by=0.2)

sum(v2)
length(v1)

v1[1]
v1[length(v1)]
v1[c(T,T,T,F,F,F)]
v1[3:1]
v1[-1]

class(v1)
class(v2)
class(v3)

v4 <- c("A", "B", "C", "D", "E")
v4
v5 <- c(T,F,F,T,T)
v5

class(v4)
class(v5)

x <- 3.14
x
class(x)
x <- as.numeric(x)
x
x <- as.integer(x)
x

as.integer(v1)
as.logical(v1)
as.character(v1)

f1 <- factor(c("small", "big", "normal", "small", "normal"))
f2 <- factor(c("small", "big", "normal", "small", "normal" ), level = c("small", "normal", "big"))
table(f1)
table(f2)
vf1 <- unclass(f1)
vf1

m1 <- cbind(v1,v2)
m2 <- rbind(v1,v2) 

class(m1)

m1[1,2] #najpierw wiersze potem kolumny
#indeksowanie od 1
s1 <- m1[1,2]
s2 <- m1[1,2, drop=FALSE]

m1[3:4,]

m3 <- matrix(1:10, nrow = 2, ncol=5)
m3 #uzupe³nianie najpierw kolumny i tak po kolei

m4 <- 1:10
dim(m4) <- c(2,5)
m4

m5 <- matrix(rep(1,4),nrow = 2, ncol = 2)
m6 <- matrix(rep(2,4),nrow = 2, ncol = 2)
m5*m6
m5%*%m6

l1 <- list(id=1L, name="Sensor1", temp=36.6)
class(l1)

df <- data.frame(id=1:5, temp=c(36.6, 35.8, 37.2, 37.1, 36.8))
attributes(df)
df
as.matrix(df)

mydata <- read.csv("dane2.csv", header = TRUE, sep= ';')
attach(mydata)
PM10
attributes(mydata)
mean(PM10)
median(PM10)
sd(PM10)
var(PM10)
range(PM10)
IQR(PM10)
quantile(PM10,0.25)
quantile(PM10,0.75)

poziom <- factor(poziom)
table(poziom)
