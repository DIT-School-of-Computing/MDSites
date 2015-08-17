x <- Sys.time();
# x is, by default, already in the POSIXct format
class(x);
# number of seconds since 1970-01-01

unclass(x);
as.POSIXlt(x)$sec
p <- as.POSIXlt(x)
p$sec