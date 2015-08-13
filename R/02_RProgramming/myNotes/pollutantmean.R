pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    print(directory);
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    if((pollutant == "nitrate") || (pollutant == "sulfate"))
    {
      print(pollutant)
    }
    else
    {
      print("Not a valid pollutant name");
    }
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    print(length(id));
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    ## NOTE: Do not round the result!
        
    # add all data from the specified .csv files to the allData data frame
    for( i in 1:2) 
    {
      if(!exists("allData"))
        {
        print("in if");
          allData <- read.csv("./specdata//001.csv", header=TRUE);
        }
      else
      {
        print("in else");
        allData <- rbind(allData, read.csv("./specdata//002.csv", header=TRUE));  
      }
    }
    
    nrow(allData);
    
    #good <- na.omit(agg1[["sulfate"]])
    #sum(agg1[["sulfate"]], na.rm=TRUE);
    
    #f <- factor(c("Date","sulfate","nitrate","ID"),ordered=TRUE);
    
  }

