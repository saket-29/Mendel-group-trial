sink("Saket/output/output.txt")
name<-'Saket Shendre'
email<-'saketshendre@gmail.com'
slack<-'@saket'
Biostack<-'Genomics'
twitter<-'@Saketshendre'
n1<-c(unlist(strsplit(tolower(slack),"")))
n2<-c(unlist(strsplit(tolower(twitter),"")))       
bigger<-nchar(pmax(slack,twitter))
smaller<-nchar(pmin(slack,twitter))
HD<-sum(n1[1:smaller]!=n2[1:smaller]) #hamming distance by reducing to smallest to allow vector comparison
Unequal_HD<- HD+ (bigger-smaller) #adjusted hamming distance with gap penalty of plus one added
cat(name,email,slack,Biostack,twitter,Unequal_HD,sep=',')
sink()
 


