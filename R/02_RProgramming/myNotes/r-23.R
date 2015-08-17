noise <- function(n,mean,sd) {
  rnorm(n,mean,sd);
} # end function definition

mapply(noise, 1:5, 1:5, 2)

# which is the same as, but a lot simpler than
a <- list(noise(1,1,2), noise(2,2,2), noise (3,3,2), noise(4,4,2), noise(5,5,2))