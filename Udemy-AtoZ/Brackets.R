

x <- c(1,23,45,53,67)    #combine
y <- seq(1,50,2)         #sequence
z <- rep("Hi!",3)        #replicate

w <- c("a","b","c","d","e")

# NOTE: In R, indexes are 1-based

w[1]
w[2]
w[-1]
w[-3]

w[1:3]
w[3:5]

w[c(1,3,5)]
w[c(-3,-5)]
