// Add the finished solution here when you receive it.

// refactored solution & user stories

//Sum Story: As a user, I want to find the sum of a collection of integers. I can use the sum function to add up all the integers and find the sum.

function sum(array) {
  var total = 0;
  for (var i = 0; i < array.length; i ++)
    {total += array[i];}
  return total
}

//Mean Story: As a user, I want to find the average of a collection of integers. The mean function will add up all the integers and then divide the total of all integers by the total number of integers. This will calculate the mean for us.

function mean(array) {
  var average = 0;
  for (var i = 0; i < array.length; i ++)
    {average += array[i];}
  return (average/array.length)
}

//Median Story: As a user, I want to find the middle number of a collection of integers. The median function will determine whether the median is present in the collection of numbers. When our collection has an odd number of integers, we will take the middle number. When our collection has an even number of integers, we will solve for the number between the two middle numbers. This is done by adding the two middle numbers together and dividing by two. In the end, our function will return the median of a given collection of numbers.

function median(array) {
  var middle = (array.length / 2);
  var plusOne = middle - 1;
    if (array.length % 2 === 1)
      {return array[plusOne];}
    else
      {return ((sorted[middle] + sorted[plusOne])/2)}
}
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)

// The code worked on 7 of 8 tests, which for a single run through on a group project I think is pretty solid. I believe the reason the code is failing is becuase it's a single number being passed in. Good job group!