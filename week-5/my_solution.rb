# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is an array of integers

# What is the output? (i.e. What should the code return?) The code should return those integers, but with a comma that follows the convention of every 3 digits

# What are the steps needed to solve the problem?
#convert the number to a string, because comma is a string character.
#comma should be placed after every 3 numbers, counting from the right,
#return the string

# 1. Initial Solution
=begin
def separate_comma(num)
  string = num.to_s.reverse

  temp_array = []
  x = 0
  backup_array = []
  if string.length > 3
    while x <= string.length do
      temp_array << string[x..x+2]
      x += 3
    end
  string = temp_array.join(',').reverse
  else
    string.reverse
  end
  if string.index(',') == 0
    backup_array = string.split('')
    backup_array.delete_at(0)
    string = backup_array.join
  end
  string
end
=end

# 2. Refactored Solution

def separate_comma(num)
  string = num.to_s

  i = -4
  if string.length > 3
    while i * -1 < string.length + 1
     string.insert(i, ',')
     i -= 4
    end
  end
  string
end
# 3. Reflection

=begin

rescue
    What was your process for breaking the problem down? What different approaches did you consider?
I actually broke it down while I was coding because I kept trying to do too much in single blocks. I then used puts statements frequently as I was doing the code because I wanted to ensure it was doing what I wanted it to keep doing. I did have to review several syntaxes I was trying to use too. The funny thing is the refactored solution was the original approach I wanted to do, but I wasn't familiar enough with the insert method to feel comfortable using it. I don't think it would have accurately reflected my abilities to code without resources.

    Was your pseudocode effective in helping you build a successful initial solution?
Initially no. But I struggled on this one for a while. After recognizing I wasn't making progress, I went back and updated my psuedocode. Once I did that, I kept that in mind as I moved forward, and was able to break this down into easier steps for me. I also took a break to eat lunch in the middle, and once I came back I made much quicker progress.

    What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I used the insert method. On my initial solution this was actually the method I wanted to use, but I couldn't get it to work with a block of code. It was primarily a misunderstanding of how to implement the syntax, but I also didn't code the loop right. After finishing the initial solution, it just clicked. I can't really explain it differently than that. The refactored solution probably took less than 15 minutes to work out, the initial solution was around 2 hours.

    How did you initially iterate through the data structure?
I iterated through the data with an infinite amount of arrays (seems that way). I literally went through and broke everything down, had it puts to the screen, then if it was what I wanted, I erased the puts and stored the info, and then moved forward. It was slow going, but I think it turned into a good learning process.

    Do you feel your refactored solution is more readable than your initial solution? Why?
Yes, by far. It's more concise, it's easier to follow, there's less random array's that aren't truly needed. I think as a result it's also easier to explain. This was a good challenge.

= end