x0 <- 1
tol <- 1e-8
repeat {
    x1 <- computeEstimate()
    
    if(abs(x1 - x0) < tol) {
      break
    }
    else
    {
      x0 <- x1
    }
}