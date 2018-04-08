y <- function(x, a=1,b=0){
  result <- a*x + b
  return(result)
}
print(y)
y(1)
y(1,2,3)
y(b=3,a=2,x=1)
y(b=3,1,a=2)

quadratic_function <- function(x,a=1,b=2,c=1){
  result <- a*x^2 + b*x + c
  return(result)
}

quadratic_function(0)
quadratic_function(1,2,4,-1)

comp_length <- function(x1, x2){
  l1 <- length(x1)
  l2 <- length(x2)
  
  if(l1==l2){
    print("Wektory tej samej dlugosci")
    return(TRUE)
  }
  else{
    print("Wektory nie sa tej samej dlugosci")
    return(FALSE)
  }
}
x1 <- c(1,2,3,4)
x2 <- c(2,2,2,2)
x3 <- c(3,3,3)

comp_length(x1,x2)
result <- comp_length(x1,x2)
result
comp_length(x1,x3)
