# function to load all the outcomes data
getOutcomes <- function() {
  getOutcomes <- read.csv("outcome-of-care-measures.csv", colClasses="character");
} # end of function getOutcomes

# function to return a vector of valid state abbreviations
getStatesVector <- function() {
  getStatesVector <- unique(getOutcomes()[,"State"])
} # end of function getStatesVector

# get the data from the column 30DayMortalityRateHeartAttack
get30DayMortalityRateHeartAttack <- function() {
  getOutcomesVector <- unique(getOutcomes()[1,11]);
} # enf of function get30DayMortalityRateHeartAttack

# function to list the valid outcomes
getValidOutcomes<- function() {
  # load the outcomes
  outcomes <- getOutcomes();
  
  # take columns 11, 17 and 23 for Heart Attack, Heart Failure and Pneumonia
  # and strip the first 46 characters because the columns names are rather long
  # and we only want the last part, heart.attack, heart.failure or pneumonia
  getValidOutcomes <- substring(names(outcomes)[c(11,17,23)], 46);
} # end of function getValidOutcomes

# function to return the best hostpital in a given state for a given outcome
best <- function(state, outcome) {
  # read outcome data
  # outcomesData <- getOutcomes();
  
  # check the state and outcome are valid
  
  # if the state name is not valid
  if(! is.element(tolower(state), tolower(getStatesVector()))) {
    stop("invalid state");
  }
  
  else if (! is.element(tolower(sub(' ','.',outcome)), tolower(getValidOutcomes()))) {
    stop("invalid outcome");
  }
  
  else {
    # print("good state, good outcome");
    outcomesData <- getOutcomes();
    newData <- subset(outcomesData, State==toupper(state));
    if(identical(outcome,"heart.attack")) {
    newData <- newData[,c(2,7,11)];
    }
    else if(identical(outcome,"heart.failure")) {
      newData <- newData[,c(2,7,17)];
    }
    else if(identical(outcome,"pneumonia")) {
      newData <- newData[,c(2,7,23)];
    }
      
      newData[,3] <- suppressWarnings(as.numeric(newData[,3]));
    # newRecs <- complete.cases(newData);
    newData <- newData[complete.cases(newData),];
    newData <- newData[ order(newData[,3], decreasing=FALSE), ]  # Use built-in R functions
    newData[1,1];
  }
  # return hospital name in that state with lowest 30-day death-rate
}