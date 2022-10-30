



# Creating data frames

mydf <- data.frame(Codes_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)

head(mydf)

colnames(mydf) <- c("Country","Code","Region")

rm(mydf)

# Alternative approach, naming columns while importing

mydf <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, Region=Regions_2012_Dataset)

head(mydf)

summary(mydf)

# Merging dataframes

head(stats)
head(mydf)

# using country in matching Country = Country.Name

merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")

head(merged)

merged$Country <- NULL

# ----------- VISUALIZING ------------

qplot(data = merged, x = Internet.users, y = Birth.rate)

qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region)

#1. SHAPES

qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region, size=I(5), shape=I(15))

#2. TRANSPARENCY

qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region, size=I(3), shape=I(19), alpha=I(0.6))

#3. TITLE

qplot(data = merged, x = Internet.users, y = Birth.rate, colour = Region, size=I(3), shape=I(19), alpha=I(0.6), main = "Birth Rate vs Internet Users")



