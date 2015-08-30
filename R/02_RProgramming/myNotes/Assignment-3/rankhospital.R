source("best.R");

# rankhospital.R
  # takes three arguments: 
    # the 2-character abbreviated name of a state (state), 
    # an outcome (outcome), and 
    # the ranking of a hospital in that state for that outcome (num).
  # returns the name of the hospital with the specifie ranking
  # for the specified outcome in the specified stage

# function to rank hospitals for a given outcome in a given state
rankhospital <- function (state, outcome, num = "best") {
  # check the state and outcome are valid  
  
  if (identical(outcome, "heart failure")) {
    outcome <- "heart.failure";
  }
  
  if (identical(outcome, "heart attack")) {
    outcome <- "heart.attack";
  }
  
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
    newData <- newData[ order(newData[,3], newData[,2], decreasing=FALSE), ]  # Use built-in R functions
    
    # decide which entry to retuen
    if (identical(num,"best")) {
        newData[1,1];
    }
    else if (identical(num,"worst")) {
        last = nrow(newData);
        newData[last,1];
    }
    else {
        newData[as.numeric(num),1];
    }
  }
  # return hospital name in that state with lowest 30-day death-rate

} # end function definition
