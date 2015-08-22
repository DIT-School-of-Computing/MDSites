x  <- rnorm(10);
f1 <- gl(2,5);
f2 <- gl(5,2);
str(split(x, list(f1, f2),drop=TRUE));