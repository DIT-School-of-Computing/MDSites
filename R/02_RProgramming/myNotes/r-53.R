library(datasets);
Rprof();
fit <- lm(y ~ x1 + x2);
Rprof(NULL);