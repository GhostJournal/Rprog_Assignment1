complete <- function(directory,id=1:332){
  files<-list.files(directory,full.names = TRUE)
  ncomplete_case <- data.frame(id=integer(),nobs=integer())
  
  for (i in 1:length(id)) {
    ncomplete_case[i,1]<-id[i]
    ncomplete_case[i,2]<-sum(complete.cases(read.csv(files[id[i]])))
  }
  ncomplete_case
}
  
