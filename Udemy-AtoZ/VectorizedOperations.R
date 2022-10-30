# (20.)

# arithmetic operations on vectors

v1 <- c(50,34,111,7,24,631,20,4,7,21)
v2 <- c(100,2,56,12,0,65,93,10,244,1)
v3 <- v1 * v2
v3

# recycling of vectors

v1 <- c(50,34,111,7,24)
v2 <- c(100,2,56,12,0,65,93,10,244,1)
v3 <- v1 + v2
v3

# vectors as attributes to functions

# (21.)

x <- rnorm(5)
x

# R specific programming loop
for(i in x) {
  print(i)
}

# conventional programming loop
for (j in 1:5) {
print(x[j])
}

# ----------- SECOND PART ------------

N <- 10000000
a <- rnorm(N)
b <- rnorm(N)

# vectorized approach (this is also a lot faster)

c <- a * b

# devectorized approach

d <- rep(NA,N)
for(i in 1:N) {
  d[i] <- a[i] * b[i]
}


