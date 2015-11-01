# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: input is the number of sides the Die will have
# Output: output is a random number based on the number of sides the die has
# Steps:

=begin

create class, which takes 1 arg (pos integ.)
if number isn't > 1, return argumenterror message, see docs
create roll method, returns a random number
create instance of die (probably)

=end

 # In this challenge you'll want to implement a basic Die class which can be initialized with some number of sides. You can then roll the die, which will return a random number.
 #If we pass Die.new a number less than 1, we should raise an ArgumentError. This is done using the raise keyword

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless @sides > 1
      raise ArgumentError.new("The die must have a positive number of sides, greater than or equal to 1")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand 1..sides
  end
end

# 3. Refactored Solution

# I really can't refactor this... I'm sorry :(
  #I'd like to... but at this moment I really can't think of how I would. I'll ponder on it and if I come up with something I'll revisit it.


# 4. Reflection

=begin
    What is an ArgumentError and why would you use one?
an Argument is error is a message that would display if an invalid variable was passed into your code. You could use it to guide the user to pass in a valid variable, while also ensuring that your program wasn't passed variables you wouldn't want.


    What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I actually did a challenge a few months ago where you create a (poor) mimic of a Boggle Game, so these methods were familiar to me. It was actually done more simply than I initially had tried. So I didn't get to refactor, but I did erase stuff that I was trying to include that wasn't necessary.

    What is a Ruby class?
A class is an instance of the object class. Class is an object that you can then create a set of rules and methods for, and create instances of later. Classes are da best.

    Why would you use a Ruby class?
You would use a class if you wanted to create multiple instances of something. for example, in a game, if you wanted multiple creatures on the map, you could create several instances of the class 'Creature'.

    What is the difference between a local variable and an instance variable?
A local variable is contained within a method. An instance variable is a variable that is tied to an instance (potentially of a class). for example,  you could have several 'Creature' classes present, and the instance variable would be naming one instance 'Carl'.

    Where can an instance variable be used?
An instance variable can be used with any class really... It just has to be a variable that is set pertaining to that class. it's usually set in the initialize method.

=end