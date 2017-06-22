#########################################################################
# This batch file knits together all the different R codes              #
# written for this project. It organizes the way the codes get executed #
# Author: Kevin Okiah                                                   #
# Course: SMU MSDS6306                                                  #
#########################################################################

#get Working Directory
y<-getwd()

#load libraries required to run this project
source(paste0(y,"/analysis/load_libraries.R"))

#load data to R

source(paste0(y,"/analysis/load_and_explore_data.R"))


######################################################
#             case Study Qestions                    #
######################################################
# 1. How many breweries are present in each state?
  names(breweries) #print the column names for breweries dataset
  count(breweries, "State")
# 2. Merge beer data with breweries data by brewery id. Print ﬁrst 6 observations and the last six observations to check the merged ﬁle.
  names(breweries) #Checking the  column names for breweries dataset
  names(beers) #Checking column names for breweries dataset
  
  #renaming the breweries column name "Brew ID" to "Brewery_id" to match beers brewery_id
  names(breweries)<-c("Brewery_id","Name","City", "State")
  
  # merge two data frames by ID
  Brewery_and_Beer <- merge(breweries,beers,by=c("Brewery_id"))
  
  head(Brewery_and_Beer) # printing the first 6 observations
  tail(Brewery_and_Beer) #printing the last 6 observations

# 3. Report the number of NA’s in each column.
  # function to count the number of NAs per column
  NA_counter<-function(y){
    sum(length(which(is.na(y))))
  }
  # Using Sapply to call the NA_counter on Brewery_and_beer dataset
  NA_count <-sapply(Brewery_and_Beer, NA_counter)
  NA_count <- data.frame(NA_count)
  print(NA_count)

# 4. Compute the median alcohol content and international bitterness unit for each state. Plot a bar chart to compare.
     median(na.omit(Brewery_and_Beer$IBU))  #subset IBU data from merged date.omit NAs using na.omit, and run median command on the clean data
     
     hist(Brewery_and_Beer$IBU)
     
    
     

# 5. Which state has the maximum alcoholic beer? Which state has the most bitter beer?

# 6. Summary statistics for ABV (Alcohol by volume) variable.

# 7. Is there a relationship between the bitterness of the beer and its alcoholic content? Draw a scatter plot.

sessionInfo()
