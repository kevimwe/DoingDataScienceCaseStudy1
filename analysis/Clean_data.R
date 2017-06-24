#renaming the breweries column name "Brew ID" to "Brewery_id" to match beers brewery_id
names(breweries)<-c("Brewery_id","Brewery_Name","City", "State")
print("Brewery Dataset, first 6 rows ")
print(head(breweries))

print(" ")

print("Beers Dataset, first 6 rows ")

names(beers)<-c("Beer_Name", "Beer_ID", "ABV" ,"IBU", "Brewery_id","Style", "Ounces" )

print(head(beers))
