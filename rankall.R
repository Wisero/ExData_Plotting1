rankall <- function(outcome, num = "best") {
  ## Read outcome data
  data <- read.csv("outcome-of-care-measures.csv", stringsAsFactors = FALSE, na.strings = "Not Available")
  
  ## Check that state and outcome are valid
  outcomelist <- c("heart attack","heart failure", "pneumonia")
  if(!outcome %in% outcomelist) stop("invalid outcome")
  
  ## For each state, find the hospital of the given rank
  if(outcome == "heart attack"){
    data_no_na <- subset(data,data[,11] != "NA")
    
    if (num == "worst"){
      sorted <- data_no_na[order(-data_no_na[,11],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][1]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
    else if (num == "best"){
      sorted <- data_no_na[order(data_no_na[,11],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][1]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
    else {
      sorted <- data_no_na[order(data_no_na[,11],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][num]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
  }
  
  
  
  if(outcome == "heart failure"){
    data_no_na <- subset(data,data[,17] != "NA")
    
    if (num == "worst"){
      sorted <- data_no_na[order(-data_no_na[,17],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][1]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
    else if (num == "best"){
      sorted <- data_no_na[order(data_no_na[,17],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][1]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
    else {
      sorted <- data_no_na[order(data_no_na[,17],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][num]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
  }
  
  
  
  if(outcome == "pneumonia"){
    data_no_na <- subset(data,data[,23] != "NA")
    
    if (num == "worst"){
      sorted <- data_no_na[order(-data_no_na[,23],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][1]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
    else if (num == "best"){
      sorted <- data_no_na[order(data_no_na[,23],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][1]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
    else {
      sorted <- data_no_na[order(data_no_na[,23],data_no_na[,2]),]    
      datalist <- split(sorted,sorted[,7])
      ans <- data.frame(sapply(datalist,function(z) {z[[2]][num]}))
      namez <- rownames(ans)
      ans[,2] <- namez
      colnames(ans) <-c("hospital","state")
      return(ans) 
    }
  }
  
}
