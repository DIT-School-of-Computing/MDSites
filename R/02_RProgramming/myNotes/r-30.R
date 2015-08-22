library(datasets);
s <- split(airquality, airquality$Month);
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm=TRUE));