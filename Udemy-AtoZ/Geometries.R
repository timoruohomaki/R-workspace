# LAYER: GEOMETRIES

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size = BudgetMillions)) + 
  geom_point()

# separate creation of data+aes object from geom

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size = BudgetMillions))

p + geom_point()

p + geom_line()

# multiple layers

p + geom_line() + geom_point()

# overriding aesthetics
# geom_ inherits from q
# but it can be overriden

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))

# example 1

q + geom_point(aes(size = CriticRating))

# example 2

q + geom_point(aes(colour = BudgetMillions))

# example 3

q + geom_point(aes(x = BudgetMillions))

# note: this overriding doesn't yet update labels, so...

q + geom_point(aes(x = BudgetMillions)) +
  xlab("Budget Millions USD")
