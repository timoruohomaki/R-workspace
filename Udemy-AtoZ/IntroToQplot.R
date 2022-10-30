

str(stats)

# ------------ Introduction to qplot

qplot(data = stats, x = Internet.users)

qplot(data = stats, x = Income.Group, y = Birth.rate)

qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(2))

qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(2), color = I("green"))

qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(2), color = I("red"), geom="boxplot")

# ------------ Visualizing, Part 1

qplot(data=stats, x=Internet.users, y=Birth.rate)

qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4))

qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4), color = I("red"))

qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(2), color = Income.Group)

