getOutcomes <- function() {
  getOutcomes <- read.csv("outcome-of-care-measures.csv", colClasses="character");  
}

getStatesVector <- function() {
  getStatesVector <- unique(getOutcomes()[,"State"])
}

get30DayMortalityRateHeartAttack <- function() {
  getOutcomesVector <- unique(getOutcomes()[1,11]);
}

getValidOutcomes<- function() {
  # outcomes <- getOutcomes()[0,c(11,17,23)];
  outcomes <- getOutcomes();
  getValidOutcomes <- substring(names(outcomes)[c(11,17,23)], 46);
}

best <- function(state, outcome) {
  # read outcome data
  outcomesData <- getOutcomes();
  
  # check the state and outcome are valid
  # outcome <- gsub(' ','.', outcome);
  print(outcome);
  
  if(! is.element(state, getStatesVector())) {
    stop("invalid state");
  }
  
  else if (! is.element(tolower(sub(' ','.',outcome)), tolower(getValidOutcomes()))) {
    stop("invalid outcome");
  }
  
  else {
    print("good state, good outcome");
  }
  # return hospital name in that state with lowest 30-day death-rate
}