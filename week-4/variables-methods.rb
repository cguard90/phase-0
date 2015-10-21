puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Hello there, #{first_name} #{middle_name} #{last_name}!"

puts "What is your favorite number?"
fav_num = gets.chomp.to_i

puts "A bigger, better number is #{fav_num + 1}, have you thought about using that as your favorite number?"

=begin

    How do you define a local variable?
A local variable is one that stays within a particular method / file and is used within that parameter. It should have a specific name so that way you know when it is being used and what it is being used for (especially if someone else will be reading the code).
    How do you define a method?
a method is the verb of a program essentially. It is what happens to a particular object. A method could be built into ruby (such as .to_s) or it could be a block of code you wrote and call later.

    What is the difference between a local variable and a method?
A variable is a piece of code that is set equal to a value (string, number, or otherwise). A method is the action that's being done or called on an object.

    How do you run a ruby program from the command line?
ruby filename.rb - it is really important you do not try to do this until you're in the folder that the file is in though. I've done that before, it's annoying. I also have a tendency to forget to add .rb.

    How do you run an RSpec file from the command line?
rspec file_name_spec.rb, and again, you have to be in the same directory, as a best practice. I'm sure there's a way to do it using a relative path, but it's just easiest in terminal to be in the folder you're running programs from for now.

    What was confusing about this material? What made sense?
I got an error message on the address rspec and couldn't for the life of me figure out what was wrong. I had used puts instead of return, so that drove me crazy for a bit. I eventually figured out when I re-read the instructions.

=end

https://github.com/cguard90/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/cguard90/phase-0/blob/master/week-4/math/my_solution.rb