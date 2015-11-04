# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer, set equal to answer, and the guess
# Output: symbols :low, :high, :correct; depending on guess
# Steps: take the integer from guess, and compare it to answer. If guess is > answer, return :high. elsif guess < answer return :low. else guess == answer return :correct. create an instance method 'solved' which returns true if the when guess == answer, or else false

#In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.

# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess.to_i
    if @guess > @answer
      return :high
    elsif @guess < @answer
      return :low
    else @guess == @answer
      return :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
  # Make sure you define the other required methods, too
end

=end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high  #returns symbol high while guess > answer
    elsif @guess < @answer #return symbol low while guess < answer
      return :low
    else @guess == @answer #when guess == answer return symobol correct
      return :correct
    end
  end

  def solved?
    @guess == @answer? true : false #changed to ternary operator. If the condition is true returns true, if it's not true returns false. This is actually one of my first times using these. Kudos to fellow Island Fox Syema Ailia for reminding me these were a thing on a previous challenge.
  end
  # Make sure you define the other required methods, too
end




# Reflection

=begin

    How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
They act as an action an object can do. for example, if you have a plant, you can't just have it grow. you could however water it, which results in it growing. The growing is something the plant can do if it receives water, but the water has to come from somewhere else. so plant.grow is a method, but requires the input from something_else.water in order for plant.grow to happen. or you could look at the dice example, the dice has the ability to be rolled, but the object doesn't do it on its own. You have to roll the dice, in this case by calling the method.

    When should you use instance variables? What do they do for you?
You should use instance variables whenever they help you. They allow you to store a variable within a class so that it can be used in different methods from within the same class. It's much more difficult to pass information from method to method without instance variables, so they simplify the process immensely.

    Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is really the flow of information / commands that a program follows. I did not have trouble with it in this example. Once we have classes interacting with each other, I expect to have a few hiccups though.

    Why do you think this code requires you to return symbols? What are the benefits of using symbols?
based on the instructions, we used symbols based on the way symbols are stored in memory. If I had to guess further than that, it was so the object ID's didn't change. Each time a string is put or printed to the screen it will have a new object ID, whereas a symbol will have the same Object ID. The added benefit of that is you can make sure 2 Objects really are equal, rather than just evaluating if they give you the same string in return.

=end
