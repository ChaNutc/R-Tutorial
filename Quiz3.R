library(datasets)
data(iris)
?iris

# Question 1
a <- iris[iris$Species == 'virginica', 1]
round(mean(a))
#7

# Question 2
apply(iris[, 1:4], 2, mean)

library(datasets)

data(mtcars)

?mtcars

# Question 3
sapply(mtcars$mpg, mtcars$cyl, mean)
tapply(mtcars$mpg, mtcars$cyl, mean)
with(mtcars,tapply(mpg, cyl, mean))

# Question 4
x <- mean(mtcars[mtcars$hp & mtcars$cyl==4,4])
y <- mean(mtcars[mtcars$hp & mtcars$cyl==8,4])
round(abs(x-y))
#127

# Question 5
debug(ls)
#suspect