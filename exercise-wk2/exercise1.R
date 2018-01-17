## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The sum function works only for vectors of numeric or complex or logical vectors
# but this my.vector has a string as an element.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# There is no such function "str_length".

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# There is no "initial" object.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
make.a.vector <- c(1, 2, 3)
typeof(make.a.vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  N <- abs(length(vector1) - length(vector2))
  return(paste("The difference in length is", N))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(1:3, seq(5, 1, by=-0.5))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  N <- length(vector1) - length(vector2)
  if (N < 0) {
    return(paste("Your second vector is longer by",-N,"elements"))
  } else {
    return(paste("Your first vector is longer by",N,"elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:5, 2:7)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector1, vector2, vector3) {
  return(c(vector1, vector2, vector3))
}

# Send 3 vectors to your function to test it.
CombineVectors(1:3, 4:7, 8:9)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(course) {
  check <- toupper(course) == course
  return(course[check])
}

