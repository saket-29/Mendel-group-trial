sink("ruth/output.txt")
name <- "Ruth"
email <- "marachi75@gmail.com"
slack_username <- "@Amarachi"
biostack <- "Biotechnology"
twitter_handle <- "@rthamarachi"
n1<-c(unlist(strsplit(tolower(slack_username),"")))
n2<-c(unlist(strsplit(tolower(twitter_handle),"")))
bigger<-nchar(pmax(slack_username,twitter_handle))
smaller<-nchar(pmin(slack_username,twitter_handle))
X=0
count=0
for(x in 1:smaller){
  
  if(n2[x]!=n1[x]="TRUE"){
    count++
  x++
}
  HD <- ((bigger-smaller)+count)
}
cat(name,email,slack_username,biostack,twitter_handle,HD,sep = ',')
sink()

