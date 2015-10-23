# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(num_array)
  sum = 0
  num_array.each { |number|
    sum += number
  }
  return sum
end

# 3. total refactored solution
#see above


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
=begin
def sentence_maker str_array
  sentence = ""
  str_array[0].capitalize!
  i = 0
  while i < str_array.length - 1
    sentence += str_array[i].to_s + " "
    i += 1
  end
  sentence += str_array[str_array.length - 1].to_s + "."
  return sentence
end
=end


# 6. sentence_maker refactored solution

def sentence_maker str_array
  sentence = ""
  str_array[0].capitalize!
  for i in 0...( str_array.length )
    sentence += str_array[i].to_s
    if( i < str_array.length - 1 )
      sentence += " "
    else
      sentence += "."
    end
  end
  return sentence
end