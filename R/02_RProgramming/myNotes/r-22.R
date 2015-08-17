# we could create a specific list as follows
# with 1 repeated 4 times, 2 repeated three times etc.

a <- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))

# or we could use mapply, by supplying the correct arguments
# since we are repeatedly calling the rep function with
# different arguments
b <- mapply(rep, 1:4, 4:1);