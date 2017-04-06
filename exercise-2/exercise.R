# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(a,b) {
  x = length(a)
  y = length(b)
  n = abs(x - y)
  ans <- paste("the difference in lengths is", n)
  return (ans)
}

# Pass two vectors of different length to your `CompareLength` function
a <- c(1,2,3)
b <- c(1,2)
difference <- CompareLength(a,b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a,b) {
  x = length(a)
  y = length(b)
  n = x-y
  if (n>0) {
    return (paste("Your first vector is longer by ", n, "elements"))
  } else if (n<0) {
    return (paste("Your second vector is longer by ", abs(n), "elements"))
  }
  return (paste("Your vectors have same length"))
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(b,a)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function (a,b) {
  x = length(a)
  y = length(b)
  n = x-y
  if (n>0) {
    ans <- deparse(substitute(a))
    return (paste(ans, "is longer by ", n, "elements"))
  } else if (n<0){
    ans <- deparse(substitute(b))
    return (paste(ans , "is longer by ", abs(n), "elements"))
  }
  return (paste("two vectors have same length"))
}
