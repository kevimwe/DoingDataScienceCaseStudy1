#load Beers.csv data

beers<-read.csv(paste0(y, "/data/beers.csv"))

dim(beers) # number of rows and columns in the dataset

#load Breweries.csv data

breweries<-read.csv(paste0(y, "/data/breweries.csv"))

dim(breweries) # number of rows and columns in the dataset
