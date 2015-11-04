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

    What is a reader method?
A reader method allows data from within one class be accessed from outside the class using the .name method.
    What is a writer method?
A writer method allows data from within one class to be changed while you are outside of that class. I didn't use this one in this challenge.
    What do the attr methods do for you?
Allow data to flow easily between methods within a class, or possibly from outside the class altogether.

    Should you always use an accessor to cover your bases? Why or why not?
not always. You may not want the information to be available outside of that instance, or even from within that particular class. An example would be private information, you don't want it to be easily accessed from outside the class.

    What is confusing to you about these methods?
Remembering that attr_reader had to be accompanied by class.name; I thought you could just call the class, total mental blerp on my part. That's ok though, I attended office hours so that was all I needed.

=end