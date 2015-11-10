// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// define function separateComma() which takes 1 argument (integer)
// convert to string, & split into an array  did not split into an array (unnecessary step)
//identify length
// for loop..  if array index -4 if % 0 insert a ','
// return it as a string with commas every 3 digits


// Initial Solution

var separateComma = function(int){
  var result = "";
  var newint = int.toString();
  var length = newint.length;
  var i = 0;
  while (length > 0) {
        result += newint.charAt(i);
        length -= 1
        if ((length % 3 == 0) && (length != 0)) {
          result += ',';
        };
    i += 1
  }
  console.log(result)
}


// Refactored Solution
// we made changes as we went, cut out converting it to an array, and I found to charAt method as well. We came up with the below solution on our initial. I did see the slice method, but it didn't look like it would make for cleaner code.
var separateComma = function(int){
  var result = "";
  var newint = int.toString();
  var length = newint.length;
  var i = 0;
  while (length > 0) {
        result += newint.charAt(i);
        length -= 1
        if ((length % 3 == 0) && (length != 0)) {
          result += ',';
        };
    i += 1
  }
  console.log(result)
}


// Your Own Tests (OPTIONAL)
separateComma(1000)
separateComma(1000000)
separateComma(999)



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We did the approach a little differently, as the methods are slightly differently. We found the charAt method, which was particularly useful.
// What did you learn about iterating over arrays in JavaScript?
// we actually didn't iterate over an array directly. However we did have to use a while loop, so it's interesting to compare and contrast the similar and different syntax elements.
// What was different about solving this problem in JavaScript?
// there was no .insert method, which made us find a new method to use. as a result we used the charAt method. Another one I found was slice, but it didn't seem as useful given what we were attempting to do.
// What built-in methods did you find to incorporate in your refactored solution? charAt, but I actually found it looking up the syntax for toString, so while it was an accident that I found it, we ended up using it.