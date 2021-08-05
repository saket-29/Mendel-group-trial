sink("./output.txt", append = T)
name <- "Eman Ahmed"
email <- "Eman.ahmed.madboli@gmail.com"
slack_username <- "@Eman"
biostack <- "Genomics"
twitter_handle <- "@Eman"
length.str1 <- nchar(slack_username)
length.str2 <- nchar(twitter_handle)
str1 <- c(unlist(strsplit(tolower(slack_username), "")))
str2 <- c(unlist(strsplit(tolower(twitter_handle), "")))
hamming_distance <- sum(str1 != str2)
cat(name,email,slack_username,biostack,twitter_handle, hamming_distance, sep = ",")
sink()
