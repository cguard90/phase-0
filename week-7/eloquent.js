
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

//var my_own_variable = 5;
//return (my_own_variable * 10)

//prompt("What is your favorite food?")

// console.log("That is my Favorite food too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var i = "#"
while (i.length <= 7) {
    console.log(i);
    i += "#";
}


// Functions

// Complete the `minimum` exercise.
// The previous chapter introduced the standard function Math.min that returns its smallest argument. We can do that ourselves now. Write a function min that takes two arguments and returns their minimum.

min = function(num1, num2) {
  console.log(Math.min (num1, num2));
}

min(0, 10);
min(0, -10);


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
  name: "Chris",
  age: 25,
  food1: "Pizza",
  food2: "Chicken Parm",
  food3: "Cookies",
  quirk: "I tend to highlight what I'm reading when I read online",
}
console.log(me["quirk"])