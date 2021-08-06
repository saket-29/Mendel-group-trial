name = ("Nadeen Esmail")
email = ("nadeenesmail4@gmail.com")
slackUsername = ("@nadeen")
biostack = ("Genomics")
twitter_handle = ("@NadeenEsmail2")
print(name, email, slackUsername, biostack, twitter_handle, sep=",")


# Hamming distance
def hammingDist(str1, str2):
	i = 0
	count = 0

	while (i < len(str1)):
		if (str1[i] != str2[i]):
			count += 1
		i += 1
	return count


# Driver code
str1 = "@nadeen"
str2 = "@NadeenEsmail2"

# function call
print(hammingDist(str1, str2))
