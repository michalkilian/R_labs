expected <- function(x, p){
  if(length(x)==length(p)){
    suma <- 0
    for (i in 1:length(x)){
      suma <- suma + x[i]*p[i]
    }
    return(suma)
  }
  else{
    print("Blad")
  }
}

x1 <- c(0.1, 0.3, 0.5, 0.7, 0.9)
p1 <- rep(0.2, 5)
x2 <- c(2, 4, 6, 8, 10, 12)
p2 <- c(1/12, 1/4, 1/3, 1/6, 1/12, 1/12)

expected(x1,p1)
expected(x2,p2)

variance <- function(x,p){
  expected <- expected(x,p)
  var <- 0
  for (i in 1:length(x)) {
    var <- var + ((x[i]-expected)^2)*p[i]
  }
  return(var)
}
variance(x1, p1)
variance(x2, p2)

isprob <- function(x, v){
  if(length(x)==length(v)){
    return(ifelse(sum(v)==1,TRUE,FALSE))
  }
  else{
    return(FALSE)
  }
}
x <- c(1,2,3,4,5,6)
v1 <- c(1,2,3,4,5,6)
v2 <- c(0.1,0.2, 0.3, 0.1, 0.1, 0.2)
v3 <- c(0.1, 0.4, 0.3, 0.2)
v4 <- c(0.1, 0.2, 0.3, 0.3, 0.1, 0.2)

isprob(x, v1)
isprob(x, v2)
isprob(x, v3)
isprob(x, v4)
