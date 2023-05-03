# import packages
# data.table
# ggplot2
#dpplr
#knitr
#magrittr

library(data.table)
library(ggplot2)
library(dplyr)
library(knitr)
library(magrittr)

print("Hello World!")

# generate 100 random numbers for x and y
# plot with basic R plot function

x <- rnorm(100)
y <- rnorm(100)
plot(x,y)

use data.table create a 3 row and 2 column data table
my_data <- data.table(x = 1:3,y = 4:6)

# create a data.table with 3 columns and 10 rows
# one column is a sequence of numbers
# one column is hello repeated 10 times
# third column is drawn from normal distribution

my_data <- data.table(x = 1:10,y = rep("hello",10),z = rnorm(10))

str(my_data)
head(my_data)

    # create a vector with 5 elements all "female"

    xfm <- rep("female")

    xml <- rep("male", 5)

# create another one filled with "male"

gender <- c(xfm, xml)

# add gender to my_data

my_data$gender <- gender

str(my_data)

# select y column

my_data$y

# filter out z > 0
my_data %>% 
    .[z > 0] %>%
    # filter out gender female
    .[gender == "female"] %>%
    kable()

#select z and gender columns

my_data %>%
    .[, .(z, gender)] %>%
    .[z > 0, ] %>%
    kable()

install.packages("curl")

# create a data.table with 3 columns and 10 rows
# one column is a sequence of numbers
# one column is hello repeated 10 times
# third column is drawn from normal distribution
data(iris)

calculate the mean of Sepal.Length
