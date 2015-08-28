set.seed(10);
x <- rep(0:1, each = 5);
e <- rnorm(10, 0, 20);
y <- 0.5 + 2 * x + e;
plot(x,y);