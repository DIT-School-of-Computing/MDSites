# This calculates the mean of each column of the matrix
# the following matrix has two dimensions
# dimension 1 has 20 rows and dimension 2 has 10 columns
x <- matrix(rnorm(200), 20, 10)

# when you apply the funciton mean over the matrix, you want to keep the second dimension (10 columns)
# and you want to collapse the first dimension (20 columns)
# so the following will generate a vector of length 10
apply(x,2,mean);

# now, when you apply the function sum over the matrix, you want to keep the first dimension (20 rows)
# and you want to collapse the second dimension (10 columns)
# so the following will generate a vector of length 20
apply(x,1,sum);

