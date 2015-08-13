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
  fileList <- list.files(directory, full.names=TRUE);
  
  # for each file in that directory, process the file
  for (fname in fileList)
  { #begin for loop
    print(fname);
    if(!exists("allData")) {
      allData <- read.csv(fname, header=TRUE);
    } # end if statement
    # if it does exist, then we add the data from the data file to the excisting data frame using rbind
    else {
      allData <- rbind(allData, read.csv(fname, header=TRUE));  
    } # end else statement
    
  } # end for loop
  print(length(fileList));
  allData <- na.omit(allData);

  #cor(allData);
  cor(allData["nitrate"],allData["sulfate"]);
  
} # end function definition