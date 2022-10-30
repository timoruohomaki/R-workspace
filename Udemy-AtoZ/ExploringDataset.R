


stats <- read.csv("P2-Demographic-Data.csv")
stats

# EXPLORING DATA


# number of rows:
nrow(stats)

# number of columns:
ncol(stats)

# show top and bottom of rows
head(stats)
head(stats,n=10)

tail(stats)

# structure
str(stats)

# summary of every column
summary(stats)

# --------------------------

# using the $

head(stats)
stats[3,3]
stats[3, "Birth.rate"]

stats$Internet.users
stats$Internet.users[2]

# see all the options
levels(stats$Income.Group)
