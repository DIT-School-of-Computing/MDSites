set.seed(20);
x <- rnorm(100);
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e;
summary(y);
plot(x, y);