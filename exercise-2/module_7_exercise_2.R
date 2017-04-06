# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  return (difference)
}

# Pass two vectors of different length to your `CompareLength` function
vector.diff <- CompareLength(c(1,12,12,12), c(1,1,19))


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(v1, v2) {
  if (length(v1) > length(v2)) {
    difference <- length(v1) - length(v2)
    return (paste("Your first vector is longer by", difference, "elements"))
  }
  difference <- length(v2) - length(v1)
  return (paste("Your second vector is longer by", difference, "elements"))
}
# Pass two vectors to your `DescribeDifference` function
a <- DescribeDifference(c(1:12), c(1:6))
b <- DescribeDifference(c(1:18), c(1:22))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  if (length(v1) > length(v2)) {
    return (deparse(substitute(v1)))
  }
  return (deparse(substitute(v2)))
}

c <- DescribeDifference(c(1:12), c(1:6))
d <- DescribeDifference(c(1:18), c(1:22))