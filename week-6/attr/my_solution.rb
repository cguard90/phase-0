#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

#You will have 2 classes, NameData and Greetings. NameData will initialize a @name variable with your name. Greetings will initialize an instance of NameData and include a method to display a salutation to the console.

class NameData
  attr_reader :name
  def initialize
    @name = "Chris"
  end
end

class Greetings
  def initialize
    @use_name = NameData.new
  end

  def salutation
    puts "Salutations #{@use_name.name}"
  end
end

hello = Greetings.new
hello.salutation

# Reflection

=begin
      release 1
    What are these methods doing?
  The first set of methods are just printing the instance variable values to the screen. The second set update the information, adnn then print the values to the screen again.
    How are they modifying or returning the value of instance variables?
  They are running a new method which updates the instance variable values.

      release 2
    What changed between the last release and this release?
  The code has had an attr_reader for :age, which allows the program to read @age from outside of the class. A method to read profile@age is no longer needed.
    What was replaced?
  what_is_age method has been replaced.
    Is this code simpler than the last?
    You could say that, it's better to read that's for sure.

      release 3
    What changed between the last release and this release?
  An attr_writer was applied to age.
    What was replaced?
  change_my_name= was removed, the attr_writer essentially takes its place
    Is this code simpler than the last?
  yes

=end