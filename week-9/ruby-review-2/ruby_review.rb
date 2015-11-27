
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

#identify if the integer is a multiple of 3
#if it is, change the value at that index to Fizz

# Initial Solution
=begin
def super_fizzbuzz(array)
  counter = 0
  while counter < array.length
    if array[counter] % 15 == 0
      array[counter] = "FizzBuzz"
    elsif array[counter] % 3 == 0
      array[counter] = "Fizz"
    elsif array[counter] % 5 == 0
      array[counter] = "Buzz"
    end
    counter += 1
  end
end
=end

# Refactored Solution

def super_fizzbuzz(array)
  array.map! { |integer|
    if integer % 5 == 0 and integer % 3 == 0
      integer = "FizzBuzz"
    elsif integer % 5 == 0
      integer = "Buzz"
    elsif integer % 3 == 0
      integer = "Fizz"
    else
      integer = integer
    end
  }
  p array
end

super_fizzbuzz([12, 15, 20])



# Reflection
=begin
What concepts did you review in this challenge?
  iteration through arrays, and modifying select elements within an array.
What is still confusing to you about Ruby?
  Not really confused by anything... if I get an error message I just try to break it down to it's most simple steps. I know there's a lot I don't know, so I will do my best to prepare for any kind of learning.
What are you going to study to get more prepared for Phase 1? Review Ruby docs, to be familiar with certain syntaxes. I'll probably continue to update my page. Just try and bring any questions I have because I haven't always been able to make office hours as often as I'd like.
=end