


c <- rep(5,10)
c

# A[3,4] 3 = row, 4 = column
# A[1,] = full first row
# A[,3] = full thrid column

# matrix() takes a vector and bends it into matrix
# - not so useful
# rbind() takes a vector and creates a row of matrix out of that
# cbind() takes a vector and creates a column of matrix out of that

? matrix
my.data <- 1:20
A <- matrix(my.data, 4, 5)
A
A[2,3]

B <- matrix(my.data, 4, 5, byrow=1)
B

B[2,5]

# rbind

r1 <- c("I","am","happy")
r2 <- c("what","a","day")
r3 <- c(1,2,3)
C <- rbind(r1,r2,r3)
C

c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D