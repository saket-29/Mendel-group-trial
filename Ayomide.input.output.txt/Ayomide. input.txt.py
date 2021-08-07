print("Ayomideoutput.text")
print("Name: ", "Ayomide Adebesin", sep="")
print("Email: ", "adebesinayomide2@gmail.com", sep="")
print("Slackusername: ", "@Ayomide", sep="")
print("Biostack: ", "Bioinformatics", sep="")
print("Twitterhandle: ", "Adebesinayomi10", sep="")

def hammingdist(str1, str2):
    i = 0
    count = 0

    while(i < len(str1)) :
        if(str1[i] != str2[i]) :
            count += 1
        i += 1
        return count

# Driver code
str1 = "@Ayomide"
str2 = "Adebesinayomi10"

# function call
print(hammingdist(str1, str2))