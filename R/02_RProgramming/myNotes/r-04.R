add2 <- function(x, y) {
  x + y
}

# function to return a vector of the elements of x (a vector) that are > 10
above10 <- function(x)
{
  # this will return a logical vector, use, indicating whcih members of x are > 10 or an empty numberic
  # vector, if there are ni elements above 10
    use <- x > 10
    x[use]
}

# function to return a vector of the elements of x (a vector) that are > a given number n
# and uses a default value of n = 10
above <- function(x, n = 10) 
{
  use <- x > n
  x[use]
}

# take a matrix or data frame and calculate the mean of each column
# y is a data frame or a matrix
# removeNA = TRUE defaults to true and indicates we want to remove the NAs
# from each column 
columnMean <- function(y, removeNA = TRUE)
{
  # count the number of columns in the matrix
  nc = ncol(y);
  # create a vector with nc entries, each default initialized to 0 
  means <- numeric(nc);
  for (i in 1:nc)
  {
    # takes an additional argument to indicate mean should
    # first remove each of the NAs from any given column
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  means;
}