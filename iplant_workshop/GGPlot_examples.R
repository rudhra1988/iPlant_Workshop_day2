#Learning GG plot
#Anirudh Soundararajan
#Febuary 22, 2015
install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

# every time you need to run the following command so you can use 
library ("ggplot2")
library ("plyr")
library ("reshape2")
library("ggthemes")

head(iris)
df <- melt(iris,id.vars = "Species")
# to create the ggplot and assign the data to myplot
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
summary(myplot)

# now using geom -- geometric 

# below assigns the plot also into myplot
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

# just run the myplot and grapgh get plotted
myplot

# to assign iris into a variable to see the data
myiris <- iris

# To change the size of the plot
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(size = 5)
myplot

#power of ggplot cchange color by values in 

myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point(size = 5)
myplot

# changing the points by shape
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species),size = 5)
myplot

#======================================================================================#

#==============Assignement 1 Working on Diamond dataset================================#

# Assigning diamond data to dataset

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

#Plotting the data from diamond dataset 
myplot_diamond <- ggplot(data = d2, aes(x = carat, y = price, color = color)) + 
  geom_point(size = 5)

myplot_diamond

#======================================================================================#

#Buit in Stat Examples

library(MASS)

ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
