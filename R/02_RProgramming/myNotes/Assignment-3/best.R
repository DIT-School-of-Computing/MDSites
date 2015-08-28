getOutcomes <- function() {
  getOutcomes <- read.csv("outcome-of-care-measures.csv", colClasses="character");  
}

getStatesVector <- function() {
  allData <- read.csv("outcome-of-care-measures.csv", colClasses="character");
  getStatesVector <- unique(allData[,7]);
}

best <- function(state, outcome) {
  # read outcome data
  outcome <- getOutcomes();
  
  # check the state and outcome are valie
  if(! is.element(state, getStatesVector())) {
    stop("invalid state");
  }
  else {
    print("good state");
  }
  # return hospital name in that state with lowest 30-day death-rate
  
}

best("MA", "DEAD");