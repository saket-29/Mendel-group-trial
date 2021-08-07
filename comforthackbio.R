 name<-("Comfort Ojedapo")
> email<-("osinugacomfort@gmail.com")
> slackusername<-("@comfort")
> biostack<-("epigenomics")
> twitter_handle<-("@osinugacomfort")
> hamming_distance<-("0")
print("comforthackbio.R",(cat(name,email,slackusername,biostack,twitter_handle,hamming_distance, sep =",")))

write.table(comforthackbio.R, "C:/Users/OJEDAPO/comforthackbio.R.txt",  row.names=F, sep="/t")

sink(comforthackbio.R/output/comforthackbio.R.txt)
comforthackbio
sink()