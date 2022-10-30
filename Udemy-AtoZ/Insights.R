



myPlot(Points / FieldGoals)


v1 <- c(1, 22, 33)

v2 <- c("Hi", "there", "friend")

v3 <- c(11, 3, 2016)

D <- rbind(v1,v2,v3)

D[3,2]

f <- function(vector=1:3){
  
  vector * 5
  
}

f() + f(c(1,1,1))
