library("parallel");
library("foreach");
library("doParallel");

system.time(readLines("http://www.jhsph.edu"));

hilbert <- function(n) {
  i <- 1:n;
  1 / outer(i - 1, i, "+");
}

x <- hilbert(1000);
system.time(svd(x));