# LAYER: DATA

movies <- read.csv("P2-Movie-Ratings.csv",stringsAsFactors = T)
head(movies)

colnames(movies) <- c("Film","Genre","CriticRating","AudienceRating","BudgetMillions","Year")
str(movies)

summary(movies)

factor(movies$Year)

movies$Year <- factor(movies$Year)

summary(movies)

str(movies)
