

stats <- read.csv("P2-Demographic-Data.csv",stringsAsFactors = T)

str(stats)

stats[1:10,]

is.data.frame(stats[1,]) #TRUE

stats[,1]

is.data.frame(stats[,1]) #FALSE

is.data.frame(stats[,1,drop=F]) #TRUE

head(stats)

stats$Birth.rate * stats$Internet.users

stats$Birth.rate + stats$Internet.users

#add column

stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)

stats$xyz <- 1:5 # vector 1:5 gets recycled, populating the whole but needs to be correct length

stats$xyz <- NULL
stats$MyCalc <- NULL

# ----------------  filtering data frames

head(stats)
filter <- stats$Internet.users < 2
stats[filter,] # using TRUE/FALSE vector as a filter

stats[stats$Birth.rate > 40,]

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]
stats[stats$Income.Group =="High income",]

stats[stats$Country.Name == "Malta",]


