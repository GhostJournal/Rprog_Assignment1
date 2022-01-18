corr<- function(directory,threshold=0){
  files<-list.files(directory,full.names = TRUE)
  
  corr_value <-vector(mode = "numeric")
  for (i in 1:length(files)) {
    current_file<-read.csv(files[i])
    current_file <- current_file[complete.cases(current_file),]
    ncomp_cases<-nrow(current_file)
    if (ncomp_cases>threshold) {
      k<-cor(current_file[['nitrate']],current_file$sulfate )
            corr_value<- c(corr_value,k)
    }
  }
    
corr_value
  
}