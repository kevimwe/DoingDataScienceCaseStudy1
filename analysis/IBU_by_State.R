#Median IBU->international bitterness by state
IBU_by_State <- by( Brewery_and_Beer_Clean$IBU, Brewery_and_Beer_Clean$State, median)
IBU_by_State<-as.data.frame(IBU_by_State)
names(IBU_by_State) = c("State", "IBU")

print(IBU_by_State)
