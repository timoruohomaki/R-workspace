# LAYER: AESTHETICS

library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# add points

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# add color

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre)) + 
  geom_point()

# add size

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size = Genre)) + 
  geom_point()

# add size - better way

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre, size = BudgetMillions)) + 
  geom_point()

# we will improve this later

