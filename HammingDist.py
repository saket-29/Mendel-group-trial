
from itertools import zip_longest

def hammingDist(slack_username, twitter_handle):
    slack_username.lower()
    twitter_handle.lower()
    return sum(c1 != c2 for c1, c2 in zip_longest(slack_username,twitter_handle))

students=[]
with open("membersInfo.csv") as f:
    for line in f:
        (name,email,slack_username,biostack,twitter_handle) = line.split(",")
        hamming_distance = hammingDist(slack_username, twitter_handle)
        output = name + "," + email + "," + slack_username + "," + biostack + "," + twitter_handle + "," + str(hamming_distance)
        print(output)
	students.add(line+ "," + str(hamming_distance))

with open("membersInfo.csv", "w") as f:
    for line in students:
        f.write(line)
       
