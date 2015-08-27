set.seed(1);
x <- rnorm(100);
log.mu <- 0.5 +0.3 * x
y <- rpois(100, exp(log.mu));
summary(y)
plot(x,y);