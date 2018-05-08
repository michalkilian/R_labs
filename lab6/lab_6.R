#dnorm - (wartoœæ, w.oczekiwana, odchylenie) - zwraca prawdopodobieñstwo wartoœci
#pnorm - (wartoœæ, w.oczekiwana, odchylenie) - zwraca dystrrybuante
#rnorm - (n, w. oczekiwana, odchylenie) - zwraca n wartoœci z danego rozk³adu norm
#qnorm - (kwantyl, w.oczekiwana, odchylenie) - zwraca wartoœæ podanego kwantyla
#standardowy rozk³ad normalny - w.oczekiwana = 0 i odchylenie = 1

pnorm(0)
pnorm(1.65)
pnorm(-0.5)

pnorm(1.65)-pnorm(0)

qnorm(0.25)
qnorm(0.75)

pnorm(0.5)-pnorm(0)

r <- rnorm(100)
mean(r)
sd(r)

pnorm(170,164,4)-pnorm(160,164, 4)

#gor¹czka
1-pnorm(37.5,36.8,0.4)
pnorm(37.2,36.8,0.4)-pnorm(36.4,36.8,0.4)

#funkcja
stand <- function(x){
    u <- mean(x)
    sd <- sd(x)
    for (xi in 1:length(x)) {
    x[xi] <- (x[xi]-u)/sd
  }
  return(x)
}

x1 <- rnorm(100,5,2)
x1 <- stand(x1)
mean(x1)
sd(x1)

#zad 5
dat <- trees
dat_means <- colMeans(dat)
dat_means
dat_devs <- apply(dat,2,sd)
dat_devs
dat_stand <- scale(dat)
dat_devs_stand <- apply(dat_stand,2,sd)
dat_means_stand <- colMeans(dat_stand)
dat_means_stand
dat_devs_stand

#funkcja 2
calc_interval_pp <- function(mi, sigma, a, b){
  return(pnorm(b,mi,sigma)-pnorm(a,mi,sigma))
}

calc_interval_pp(0.5,0.1,0.4,0.6)
calc_interval_pp(0.5,0.1,0.3,0.7)
calc_interval_pp(0.5,0.1,0.2,0.8)

calc_interval_pp(10,2,8,12)
calc_interval_pp(10,2,6,14)
calc_interval_pp(10,2,4,16)

calc_interval_pp(-3,0.67,-3.67,-2.33)

#dany 1 kwartyl = 0.5 trzeci = 1.5 wyznaczyæ mi i sigma
#sd = sigma = IQR/1.35 = (1.5-0.5)/1.35
#mean = mi = (1.5+0.5)/2

