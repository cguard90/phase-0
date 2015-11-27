
# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
#we actually had typed out some psuedocode. It got erased because we started over from scratch with the original file. I apologize as this was my error.


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = []
    @scores = scores
    @total = 0
  end

  def average
    @total = @scores.inject(:+)
    @total = @total / @scores.length
    return @total
  end

  def letter_grade
    if @total >= 90
      return "A"
    elsif @total >= 80 && @total < 90
      return "B"
    elsif @total >= 70 && @total < 80
      return "C"
    elsif @total >= 60 && @total < 70
      return "D"
    else
      return "F"
    end
  end
end

#need to call the class property first_name from outside the cli

  counter = 0
#A binary search could require the same syntax
# We timeboxed this portion because we spent > 2 hours on this
def linear_search(students_array, name_string)
  counter = 0
  while counter < students_array.length
  if students_array[counter].first_name == name_string
    return counter
    counter +=1
  else
    return -1
    end
  end
end


  #Write a linear_search (Links to an external site.) method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.
#students.each do |name|
#p students[name]

alex = Student.new("Alex", [100, 100, 100, 0, 100])
john = Student.new("John", [50, 75, 85, 100, 5])
mary = Student.new("Mary", [90, 35, 65, 20, 15])
joe = Student.new("Joe", [95, 65, 85, 95, 5])
jeffrey = Student.new("Jeffrey", [75, 95, 98, 100, 92])

students = []
students.push(alex)
# Refactored Solution

#timeboxing this to a 2 hour time frame, will refactor this tomorrow if time allows.




# DRIVER TESTS GO BELOW THIS LINE

# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection
=begin
What concepts did you review in this challenge?
  We reviewed working with classes, and the instance variables and calling class methods from outside the class.
What is still confusing to you about Ruby?
  Ruby doesn't really confuse me, jumping back into Ruby from JavaScript lead to using some JS code, which Ruby returned an error message for.
What are you going to study to get more prepared for Phase 1?
  Probably brush up on some snytax, and some methods. There's so much information it's impossible to memorize it, I just want to be familiar with the error messages and why they happen, and browsing ruby docs for solutions.
=end