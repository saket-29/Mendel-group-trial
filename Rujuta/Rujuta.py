name = "Rujuta Shinde"
email = "rujutaashinde@gmail.com"
slack_username = "@Rujuta"
biostack = "Computational Genomics"
output = name + "," + email + "," + slack_username + "," + biostack
print(output)

file = open('C:/Users/Shree/Desktop/HackBio Internship/output.txt', 'w')
file.write(output)
file.close()
