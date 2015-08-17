x <- as.Date("2012-01-01");
y <- strptime("09 Jan 2011 11:23:45", "%d %b %Y %H:%M:%S")
x <- as.POSIXlt(x);
x-y