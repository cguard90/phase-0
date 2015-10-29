
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Jess Richardson]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code is commented.

# 0. Pseudocode   Partner did the Psuedocode, so I don't have it

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
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
=end

# 3. Refactored Solution

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


# 4. Reflection


    # Which data structure did you and your pair decide to implement and why?
#We stored all the gathered information in a hash, becuase it allows you to change the value as you come across the same key word. It made it easy to count the amount of times a key-word appeared

    # Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#slightly. I'm not great at breaking down the steps at the very beginning. I didn't do it here, but I do write myself comments as I go so that I can break down the very next step I need to do.

    # What issues/successes did you run into when translating your pseudocode to code?
#I had a lot of trouble trying to refactor this one. Ultimately I am moving on without refactoring it. I tried several things, but I couldn't get any to work. For the most part, I was able to implement my psuedocode.

    # What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#I used the each iterator twice. I realize this shouldn't be necessary because DRY coding. I'd be more than happy to revisit this later to refactor it, but for now I think I have to move on to ensure I complete all assignments. The newest element I have utilized here is hash[key] ||= 0. What this does is look in a hash and see if that key exists. If it does not, it creates the key.