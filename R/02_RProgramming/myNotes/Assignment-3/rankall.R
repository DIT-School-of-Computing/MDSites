source("rankHospital.R");

# rnakaoo.R
# takes two arguments: 
# an outcome (outcome), and 
# the ranking of a hospital in their own state for that outcome (num).
# returns a dataset with the names of the hospitals in all states with the specifie ranking
# for the specified outcome

# function to rank hospitals for a given outcome
rankall <- function (outcome, num = "best") {
  
  ## Check that outcome is valid
    #  ensure heart.attack and heart.failure are correctly handled
    if (identical(outcome, "heart failure")) {
      outcome <- "heart.failure";
    }
  
    if (identical(outcome, "heart attack")) {
      outcome <- "heart.attack";
    }
  
    # check that specified outcome is listed in the data file
    if (! is.element(tolower(sub(' ','.',outcome)), tolower(getValidOutcomes()))) {
      stop("invalid outcome");
    }
  
  # otherwise, we can proceed
  else {
    print("good outcome");
    ## Read outcome data
    
    # get the list of staes in the data file
    listOfStates <- getStatesVector();
    
    ## For each state, find the hospital of the given rank
    for (s in listOfStates) {
      r <- rankhospital(s,outcome);
      print(paste(s, r));
    }
    ## Return a data frame with the hospital names and the
    ## (abbreviated) state name
    
  }
    

}