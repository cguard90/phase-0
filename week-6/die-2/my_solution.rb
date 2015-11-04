# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: input will be strings which equate to the sides of the dice.

# Output: output will be the strings returned.

# Steps: raise the argument error if the passed in value is empty. Set the labels equal to strings. return a side at random in the 'roll' method (.sample).

#In this challenge you will create a more exciting Die class that takes an array of strings as its input. When Die#roll is called, it randomly returns one of these strings. If Die.new is passed an empty array, it should raise an ArgumentError. It should work like this

# Initial Solution
=begin
class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Sides cannot be an empty array.")
    end
    @sides = labels.length
    @strings = labels
  end

  def sides
    @sides
  end

  def roll
    @strings.sample
  end
end
=end

# Refactored Solution

class Die
  def initialize(labels)
    if labels == [] #if labels is passed an empty array
      raise ArgumentError.new("Sides must be provided as an array, but the array cannot be empty")  #more specific error message so the error can be avoided.
    end
    @sides = labels.length  #number or sides is = to the elements within the array
    @strings = labels #create a variable that can be used in other methods, so that way the labels can be returned later
  end

  def sides
    @sides #@sides is already set to array.length, so we just need to retun @sides
  end

  def roll
    @strings.sample #returns a random string from the array that is contained within @strings. with a sufficiently large number of rolls, all possible results are returned.
  end
end


# Reflection

=begin

    What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
Not too much was changed. Becuase I did the other one so recently this was fairly straight forward. The biggest difficulty was actually getting the argument error right because those are so new to me. I also set it incorrectly initially, I was trying to make it too complicated.

    What does this exercise teach you about making code that is easily changeable or modifiable?
It's easier to change well written and clear code than it is to refactor lol. I didn't refer back to my old code, though I thought my old code was fine. I also liked the flow of data used on this, kind of reinforcing the GPS from last week except this is contained within a class which makes it easier.

    What new methods did you learn when working on this challenge, if any?
No new methods, they were all the same as the previous solution.

    What concepts about classes were you able to solidify in this challenge?
I had done a boggle die before, back in July or August. This was kind of a review. The part I liked most of this challenge was the data flow, as mentioned above. It is a lot easier within classes, rather than between methods outside of a class.

=end
