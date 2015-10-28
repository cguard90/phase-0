# Pad an Array

# I worked on this challenge [by myself, with: Syema Ailia]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
#my pair typed the psuedocode, that's why I don't have it.
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  array
end

#If the minimum size is less than or equal to the length of the array, it should just return the array.
=begin
def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each { |x|
    new_array << x
  }
  array_length = new_array.length
  if min_size <= array_length || min_size == 0  ###
    return new_array
  else
    array_difference = min_size - array_length  ###
    array_difference.times {
      new_array << value
    }
    new_array
  end
end
=end

# 3. Refactored Solution
#we were not able to successfully refactor this... after 2 hrs of working on this, we decided to call it good

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.collect {|x| x }

  if min_size <= new_array.length || min_size == 0  ###
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    new_array
  end
end

# 4. Reflection

=begin
    Were you successful in breaking the problem down into small steps?
For the destructive method, yes. For the non-destructive method, not so much.
    Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Yes for the destructive method. having to create a new object ID was an unexpected obstacle for the non-destructive method.

    Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
On the destructive method, it actually went very smoothly. For the destructive method, we had to pull in a lot of resources, and ended up returning a whole new array which we created.

    When you refactored, did you find any existing methods in Ruby to clean up your code?
After 2 hours, we called it good. We were on to some potential solutions, but wanted a break. So at this point in time, no we did not successfully refactor, but I believe the .collect method, and we looked into a ternary operator as potential solutions.
    How readable is your solution? Did you and your pair choose descriptive variable names?
I think our solutions are very readable, and our variable names are specific and easy to follow.
    What is the difference between destructive and non-destructive methods in your own words?
destructive methods are easier to work with because they apply the changes that you are coding to the original array. non-destructive methods are better for preserving information becuase you are pushing the contents into a new location, and making the changes to the copy.
=end