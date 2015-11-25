/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100], // joseph
               [85, 80, 90, 90], // susan
               [75, 70, 80, 75], // william
               [100, 90, 95, 85] ] // elizabeth



// __________________________________________
// Write your code below.

// var gradebook = {};

// gradebook["Joseph"] = {};
// gradebook["Susan"] = {};
// gradebook["William"] = {};
// gradebook["Elizabeth"] = {};

// gradebook["Joseph"]["testScores"] = scores[0];
// gradebook["Susan"]["testScores"] = scores[1];
// gradebook["William"]["testScores"] = scores[2];
// gradebook["Elizabeth"]["testScores"] = scores[3];

// gradebook.addScore = function(name, score) {
//   gradebook[name]["testScores"].push(score);
// }
// console.log(gradebook.addScore)

// gradebook.getAverage = function(name){
//   var select_nums = gradebook[name]["testScores"]
//   return average(select_nums)
// };

// var average = function(array_of_int) {
//   var sum = 0
//   for (var i = 0; i < array_of_int.length; i++) {
//     sum += array_of_int[i];
//     var average_grade = sum / array_of_int.length
//   }
//   return average_grade
// }

// __________________________________________
// Refactored Solution
gradebook = {}

for(var counter = 0; counter < students.length; counter ++){
  gradebook[students[counter]] = {};
   }

for(var counter = 0; counter < students.length; counter ++){
  gradebook[students[counter]]["testScores"] = scores[counter];
   }

gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook.getAverage = function(name){
  var select_nums = gradebook[name]["testScores"]
  return average(select_nums)
};

var average = function(array_of_int) {
  var total = array_of_int.reduce(function(a, b) {
    return (a + b) });
  total =  total / array_of_int.length;
  return total
}

// gradebook.getAverage("Joseph")
// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I think this just built off of last weeks material, I'm not sure how much of it was truly new. It was mostly reinforcement of how and what arguments you could pass in.

// How did you iterate over nested arrays in JavaScript? It was good practice with the for loop, this challenge wasn't as hard as several of the ruby ones were. to answer the question, with a for loop. It was actually essentially the same loop twice. Once to create the objects, it would not let us compress the creation of the object and the  addition of the array into one, but we may not have done it correctly.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// the reduce method was new. It just might work through magic. We had to copy the syntax exactly. I'll actually be attending office hours to discuss it a little bit further becuase we weren't sure on a couple elements in it. We did get it to work though, so that's nifty.






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)