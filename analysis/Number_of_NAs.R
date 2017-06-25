# function to count the number of NAs per column
NA_counter<-function(y){
  sum(length(which(is.na(y))))
}
# Using Sapply to call the NA_counter on Brewery_and_beer dataset
NA_count <-sapply(Brewery_and_Beer, NA_counter)
NA_count <- data.frame(NA_count)
print(NA_count)