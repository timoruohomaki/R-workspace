


# Named vectors

Charlie <- 1:5
Charlie

# give names
names(Charlie) <- c("a","b","c","d","e")

names(Charlie)
Charlie

# clear names
names(Charlie) <- NULL

# ---------------

# Naming matrix dimensions

temp.vec <- rep(c("a","B","zZ"),each=3)
temp.vec 

Bravo <- matrix(temp.vec, 3, 3)
Bravo

rownames(Bravo) <- c("How", "are", "you?")
colnames(Bravo) <- c("X","Y","Z")

Bravo
Bravo["are","Y"] <- 0
Bravo

