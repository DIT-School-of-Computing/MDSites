source("rankHospital.R");

# rnakaoo.R
# takes two arguments: 
# an outcome (outcome), and 
# the ranking of a hospital in their own state for that outcome (num).
# returns a dataset with the names of the hospitals in all states with the specifie ranking
# for the specified outcome

# function to rank hospitals for a given outcome
rankall <- function (outcome, num = "best") {
  # declare a data frame to hold the results
  
  df <- data.frame(hospital=character(),state=character());
  allData = matrix(nrow=54, ncol=2);
  # "hospital"=character(), "state"=character());
  ## Check that outcome is valid
    #  ensure heart.attack and heart.failure are correctly handled
    if (identical(outcome, "heart failure")) { 
      outcome <- "heart.failure";
    } # end if heart failure
  
    if (identical(outcome, "heart attack")) {
      outcome <- "heart.attack";
    } # end if heart attack
  
    # check that specified outcome is listed in the data file
    if (! is.element(tolower(sub(' ','.',outcome)), tolower(getValidOutcomes()))) {
      stop("invalid outcome");
    } # end if not valid outcome
  
  # otherwise, we can proceed
  else { # valid outcome 
    # print("good outcome");
    ## Read outcome data
    
    # get the list of staes in the data file
    listOfStates <- getStatesVector();
        
    i <- 1;
    ## For each state, find the hospital of the given rank
    for (s in listOfStates) {
      r <- rankhospital(s,outcome, num);

      allData[i,1] <- r;
      allData[i,2] <- s;
      
      i <- i + 1;
      
    } # end for loop
    
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name
    allData = rbind(df, allData);
    colnames(allData) <- c("hospital", "state");
    # rownames(allData)<- df[,2];
    
    order <- order(allData$state);
    allData <- allData[order,];
    
    return(allData);
  } # end valid outcome
}# end function definition