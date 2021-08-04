name = "Rujuta Shinde"
email = "rujutaashinde@gmail.com"
slack_username = "@Rujuta"
biostack = "Data Science"
twitter_handle = "@RujutaShinde3"

from itertools import zip_longest

def hammingDist(slack_username, twitter_handle):
    slack_username.lower()
    twitter_handle.lower()
    return sum(c1 != c2 for c1, c2 in zip_longest(slack_username,twitter_handle))

hamming_distance = hammingDist(slack_username, twitter_handle)
output = name + "," + email + "," + slack_username + "," + biostack + "," + twitter_handle + "," + str(hamming_distance)
print(output)

file = open('C:/Users/Shree/Desktop/HackBio Internship/output.txt', 'w')
file.write(output)
file.close()
