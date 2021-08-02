//import FileSystem library
const fs = require('fs');

//Add info string into a variable seperated by commas
var info = "diyar,deyarbakr1997@gmail.com,@diyar,Software Development"

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