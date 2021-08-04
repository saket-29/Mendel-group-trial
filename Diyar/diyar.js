//import FileSystem library
const fs = require('fs');
let name = "Diyar"
let email = "deyarbakr1997@gmail.com"
let bioStack = "Software Development"
let slackName = "@diyar"
let twitterHandle = "@deyarrr4"

//Hamming Distance
function hammingDist(str1, str2)
{
    let i = 0, count = 0;
    while (i < str1.length)
    {
        if (str1[i] != str2[i])
            count++;
        i++;
    }
    return count;
}

var HammingDistValue = hammingDist (slackName, twitterHandle)

//Add info string into a variable seperated by commas
let info = [name, email, slackName, bioStack, twitterHandle,HammingDistValue].join(',');

//write info to a .txt file saved in output/ folder
fs.writeFile('./output/diyar.txt',info,(err) => {
    if (err)
      console.log(err);  //catch errors
    else {
      console.log("File written successfully\n");   //file written successfully 
      console.log("The written has the following contents:");
      console.log(fs.readFileSync("./output/diyar.txt", "utf8"));  //reads the contents of the generated .txt
    }
  });