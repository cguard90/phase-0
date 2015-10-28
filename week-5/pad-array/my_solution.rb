# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

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

# 3. Refactored Solution
#we were not able to successfully refactor this... after 2 hrs of working on this, we decided to call it good
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
    array_difference.times {new_array << value}

    new_array

  end
end
=end

# 4. Reflection