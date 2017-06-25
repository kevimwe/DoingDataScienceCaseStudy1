#Median ABV -> Alcohol content by state
ABV_by_State <- by( Brewery_and_Beer_Clean$ABV, Brewery_and_Beer_Clean$State, median)
ABV_by_State <-as.data.frame(ABV_by_State)

names(ABV_by_State) = c("State", "MeDian_ABV")

print(ABV_by_State)