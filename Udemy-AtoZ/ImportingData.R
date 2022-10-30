

getwd()

# select file manually

stats <- read.csv(file.choose())
stats

rm(stats)

# select file from working directory

stats <- read.csv("P2-Demographic-Data.csv")
stats

