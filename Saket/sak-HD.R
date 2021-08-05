
sink("output/output.txt")
name<-'saket'
email<-'saketshendre@gmail.com'
slack<-'@saket'
Biostack<-'Genomics'
twitter<-'@Saketshendre'
n1<-c(unlist(strsplit(tolower(slack),"")))
n2<-c(unlist(strsplit(tolower(twitter),"")))       
bigger<-nchar(pmax(slack,twitter))
smaller<-nchar(pmin(slack,twitter))
x=0
count=0
for (x in 1:smaller) {
  
  if(n2[x]!=n1[x]="TRUE"){
     count++
     x++
}
HD<-((bigger-smaller)+count)
}  
cat(name,email,slack,Biostack,twitter,HD,sep=',')
sink()

