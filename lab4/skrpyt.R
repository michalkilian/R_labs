v1 <- c(0/0, 1/0, 1/Inf, TRUE, as.numeric("abc"))
print(v1)
print(is.na(v1))
print(is.nan(v1))

v11 <- vector("numeric", length = 9)
print(v11)
v11[1:4] <- 1:4
v11[5] <- "null"
v11[6:9] <- 6:9
print(v11)
print(class(v11))
v11 <- as.numeric(v11)
nullelement <- is.na(v11)
print(nullelement)
v11 <- v11[!nullelement]
print(v11)

df <- data.frame(id=1:5, temp=c(36.6, NA, 37.2, 37.1, 36.8))
goodrows <- complete.cases(df)
df <- df[goodrows,]
print(df)