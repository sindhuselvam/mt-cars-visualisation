library(ggplot2)# loading ggplot2 in the current session 
mtcars#mtcars is an inbuilt dataset in R 
View(mtcars)# viewing the dataset to get an idea of what is there inside the dataset
dim(mtcars)
names(mtcars)#gives the names of the columns
head(mtcars)# you can use either head or View function to see the contents of the dataset, viewfn will give a complete view of the data set whereas head fn will show only the first five rows of the data set 
tail(mtcars)# gives you the last 6 rows of the data set
summary(mtcars)# gives descriptive statistics(min, 1st Q, Median, Mean, 3rd Q, max))
# mode is not a built-in R function, we calculate it for each using mode()
str(mtcars)#structure of the data set 
mode_mpg=mode(mtcars$mpg)
----
  #historgram- A histogram is an accurate representation of the distribution of numerical data.
  #It is an estimate of the probability distribution of a continuous variable (quantitative variable)
  #and was first introduced by Karl Pearson.[1] It differs from a bar graph, in the sense 
  #that a bar graph relates two variables, but a histogram relates only one.

#distribution of cars by cylinders(historgram)
  
library(ggplot2)
ggplot(mtcars, aes(cyl)) +
  geom_histogram(binwidth =2) + xlab('cylinders') + ylab('Number of Cars') + 
  ggtitle('Distribution of Cars by Cylinders')
---
#distribution of cars by mpg(histogram)
  ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth =2) + xlab('Miles per Gallon') + ylab('Number of Cars') + 
  ggtitle('Distribution of Cars by MIles per gallon')
---
#distribution of cars by weight(histogram)
ggplot(mtcars, aes(wt)) +
  geom_histogram(binwidth =1) + xlab('weight') + ylab('Number of Cars') + 
  ggtitle('Distribution of weight')
# 2nd method
plot(hist(mtcars$wt))
----
  #density plot. it is similar to histrogram, here curve line is used to show the distribution
  plot(density(mtcars$wt)) 
  plot(density(mtcars$mpg))
-----
#boxplot=a simple way of representing statistical data on a plot in which a rectangle is drawn to represent 
  #the second and third quartiles, usually with a vertical line inside to indicate the median value. 
  #The lower and upper quartiles are shown as horizontal lines either side of the rectangle.
  
#boxplotting am vs MPG  
ggplot(mtcars,aes(x= factor(am),y=mpg))+
  geom_boxplot()+
  xlab("transmission type (am)")+ylab("Miles per gallon (mpg)") +
ggtitle("box plot showing tansmission type vs mpg")
## box plot it gives an indication that for Automatic transmission results in less Mpg
----
 

