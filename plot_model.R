


diversity <- read.csv("cleanunderstory.csv")

canopy <- read.csv("cleandensiometer_means.csv")



# remove extra columns on diversity
diversity <- head(diversity, -13)
#bind the datasets together
df_combined <- cbind(diversity, canopy)
View(df_combined)
#plot a graph
plot(df_combined$densmeans, df_combined$eveness,
     main = "comparison chart",
     xlab = "Canopy Openess",
     ylab = "SR", 
     ylim = c(0, 1))


#run a regression potentially or maybe linear model, tyler ran a linear model over time so we could try that, also break it up by treatment or code each treatment to be a different color\#o