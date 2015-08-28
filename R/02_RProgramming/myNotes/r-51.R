library("parallel");
library("foreach");
library("doParallel");
cl <- makeCluster(detectCores() - 1)
registerDoParallel(cl, cores = detectCores() - 1);

