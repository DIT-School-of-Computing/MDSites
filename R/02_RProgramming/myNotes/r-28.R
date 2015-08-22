library(datasets);
s <- split(airquality, airquality$Month);
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]));