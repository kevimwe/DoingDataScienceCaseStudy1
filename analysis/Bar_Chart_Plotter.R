Median_IBU_and_ABV <- melt(Median_IBU_and_ABV)
names(Median_IBU_and_ABV)[3]<-"Median"
y <- ggplot(Median_IBU_and_ABV, aes(x =State, y= Median, fill = variable), xlab="State") +
  geom_bar(stat="identity", width=.5, position = "dodge") +facet_grid( variable~ . ,scales = "free")+
  labs(title = "Grid Bar Chart of International Bitterness Unit of the beer (IBU) Median & Alcohol by volume of the beer (ABV) Median by State")+
  theme(plot.title = element_text(hjust = 0.5))

print(y)