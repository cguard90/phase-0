
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def mode(array)
  input_frequency = Hash.new
   most_frequent = []
    array.each { |array_data|
      input_frequency[array_data] ||= 0
      input_frequency[array_data] += 1
    }

  highest_val = 0
    input_frequency.each { |key, val|
    if val > highest_val
    highest_val = val
    end
   }

  input_frequency.each { |key, val|
    if val == highest_val
    most_frequent.push(key)
    end
  }
  return most_frequent
end

# 3. Refactored Solution




# 4. Reflection