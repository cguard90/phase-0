// as a user, I need a function to calculate the sum of numbers (function name sum).

// as a user, I want to know the sum of all the numbers when there is an odd number of numbers listed. I need the numbers to be submitted as one list.

// as a user, I want to know the sum of the numbers when an even number of numbers is listed. I need the numbers submitted as one list.

// as a user, I need a function to calculate the mean of numbers. (function name mean).

//as a user, I need the mean function to tell me the average of all the numbers in an odd number length list. I need the numbers submitted as 1 list.

// as a user, I need the mean function to tell me the average of all the numbers in an even number length list. I need the numbers submitted as one list.

// as a user, I need the median function (function name median).

// as a user, I need the median function to calculate the median value of an odd number length list. I need the numbers submitted as one list.

// as a user, I need the median function to calculate the median in an even number length list. I need the numbers submitted as one list.

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

// The code worked on 7 of 8 tests, which for a single run through on a group project I think is pretty solid. The code is failing on the median test, I'm not one hundred percent sure why. the test says the median should be return a float on an even number array. If I had to guess, This code might not be.