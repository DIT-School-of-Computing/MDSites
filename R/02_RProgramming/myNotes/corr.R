corrFile <- function(fName) {
  # function to calculate the correlation between sulfate and nitrate in a given file
  
}
corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!

  # dir(directory, pattern = "^[0-9]", full.names = TRUE, ignore.case = TRUE)
    
  # generate a list of all files in the specified directory
  
  results <- vector();
  
  fileList <- list.files(directory, full.names=TRUE);
  
  # for each file in that directory, process the file
  for (fname in fileList)
  { #begin for loop
    correct <- countComplete(fname);
    if(correct > threshold)
    {
      allData <- read.csv(fname, header=TRUE);  
      allData <- na.omit(allData);
      
#      print(paste("count:",correct,"correlate", fname));
      result <- cor(allData["nitrate"],allData["sulfate"]);
      # print(result);
      results <- c(results, result);
    } # end if (threshold) loop

  } # end for loop
  return(results);
  
} # end function definition

countComplete <- function(fname) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  # this function counts the complete records in a file by 
  # eliminating all NAs opon read
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  # this declares an empty data frame to be used to store the rsummary data
  correctFrame = data.frame();
  
  # add all data from the specified .csv files to the allData data frame
  # this code loops through all the values in the id argument to the function call
  # and for each, either creates (if it is the first value) or appends the records read from 
  # the .csv file to the allData data frame

  # this converts single or double-digit file numbers into a three-digit file number
    # padded with leading 0
    # for example 1 becomes 001, 21 becomes 021 and 321 remains 321
    
    # we will (temporarily) store the new data in a vector of its own so we can count the 
    # number of complete cases being read from the specified file
    newData <- read.csv(fname, header=TRUE);
    
    # # in the following statement, the complete.cases function elimintaes all NAs
    # and the sum function counts all the TRUE entries in that vector
    completeCount <- sum(complete.cases(newData));

    return(completeCount);
  
} # end of countComplete function