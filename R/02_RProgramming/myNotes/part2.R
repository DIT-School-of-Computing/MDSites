complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
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
  for( i in id) # for each numeric in the id list provided (or not provided) as an argument
  { # begin for loop
    
    # this converts single or double-digit file numbers into a three-digit file number
    # padded with leading 0
    # for example 1 becomes 001, 21 becomes 021 and 321 remains 321
    fileNum <- formatC(i, width=3,flag="0");
    
    # this builds the file name using the directory, the padded file number and the .csv extension
    fname <- paste(directory,"/",fileNum,".csv",sep="");
    # the following was used for debugging purposes
    # print(fname);
    # this checks if the allData frame already exists, 
    # if not, then we create it by reading in a .csv file
    if(!exists("allData")) {
      # create a new vector, allData by reading the (first) .csv file specified
      allData <- read.csv(fname, header=TRUE);
      
      # # in the following statement, the complete.cases function elimintaes all NAs
      # and the sum function counts all the TRUE entries in that vector
      completeCount <- sum(complete.cases(allData));
      
    } # end if statement
    # if it does exist, then we add the data from the data file to the excisting data frame using rbind
    else {
      # we will (temporarily) store the new data in a vector of its own so we can count the 
      # number of complete cases being read from the specified file
      newData <- read.csv(fname, header=TRUE);
      
      # # in the following statement, the complete.cases function elimintaes all NAs
      # and the sum function counts all the TRUE entries in that vector
      completeCount <- sum(complete.cases(newData));
      
      # and now add the newData (including incomplete cases) to the allData vector
      allData <- rbind(allData, newData);  
    } # end else statement
    
    # print out the number of complete cases for this iteration
    print(c(as.numeric(i), as.numeric(completeCount)));
    correctFrame <- rbind(correctFrame, c(as.numeric(i), as.numeric(completeCount)));
    
  } # end for loop
  
  # assign the correct column names to the data Frame
  colnames(correctFrame) <- c("id","nobs")
  
  # print the resulting data frame
  return(correctFrame);
  
} # end of for loop