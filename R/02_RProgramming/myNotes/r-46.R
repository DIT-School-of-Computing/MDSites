set.seed(10);
x <- rbinom(100, 1, 0.5);
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 *x + e
summary(y)
plot(x,y);