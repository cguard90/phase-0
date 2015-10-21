# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# 1. What is the name of the file with the error?
#error.rb
# 2. What is the line number where the error occurs?
#8
# 3. What is the type of error message?
# syntax error, unexpected '=', expecting end-of-input
# 4. What additional information does the interpreter provide about this type of error?
# it indicates the = is in the wrong place
# 5. Where is the error in the code?
# the = needs to be before the strings
# 6. Why did the interpreter give you this error?
# the order is incorrect, once the order is correct it will prompt for the next error.
# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 28
# 3. What is the type of error message?
# => syntax error, unexpected end-of-input, expecting keyword_end
# 4. What additional information does the interpreter provide about this type of error?
# It actually says the error is at the end of the file, but essentially it indicates there is an 'end' word missing
# 5. Where is the error in the code?
# line 28, the while loop isn't closed
# 6. Why did the interpreter give you this error?
#the end was missing.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 48
# 2. What is the type of error message?
# => `<main>': undefined local variable or method `south_park' for main:Object (NameError)
# 3. What additional information does the interpreter provide about this type of error?
# => It says the the variable / method 'south_park' has not been defined.
# 4. Where is the error in the code?
# => line 48
# 5. Why did the interpreter give you this error?
# a variable must be defined at some point, and this is just a floating label so it doesn't know what to do with it.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 63
# 2. What is the type of error message?
# => errors.rb:63:in `<main>': undefined method `cartman' for main:Object (NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
# => it states that this method is undefined. It knows it's a method becuase of hte parenthesis, but there is no content and the method was never built.
# 4. Where is the error in the code?
# => this is a method that was never defined, so it should have been defined earlier in the code.
# 5. Why did the interpreter give you this error?
# => it is an undefined method, the computer doesn't know what to do with it.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 82 and 78
# 2. What is the type of error message?
# => wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# => It says that an argument is being passed in where there should not be an argument
# 4. Where is the error in the code?
# => either line 78 or 82. I would say 82 becuase you're passing in an argument to a method that doesn't need one, but you could also build this method so that you pass in the argument (although I think that would be impractical).
# 5. Why did the interpreter give you this error?
# => conflicting number of arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

#cartman_says

# 1. What is the line number where the error occurs?
# => 97
# 2. What is the type of error message?
# => wrong number of arguments, 0 for 1
# 3. What additional information does the interpreter provide about this type of error?
# => it says there is an argument missing where there should be one passed in.
# 4. Where is the error in the code?
# => line 101; the argument was never passed in.
# 5. Why did the interpreter give you this error?
# => sloppy coding. The method requires an argument, but an argument was never provided.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# =>  line 122
# 2. What is the type of error message?
# => wrong number of arguments, 1 for 2
# 3. What additional information does the interpreter provide about this type of error?
# => the method requires 2 arguments, but only 1 was provided.
# 4. Where is the error in the code?
# => line 122, an insufficient number of arguments were provided.
# 5. Why did the interpreter give you this error?
# => the arguments provided need to match the arguments required by the method.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 137
# 2. What is the type of error message?
# =>  String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# => it can't multiply 5 by string. (string doesn't have the authoritay to multiply, basically)
# 4. Where is the error in the code?
# => the error is in the order, it should be respect * 5, not 5 * respect
# 5. Why did the interpreter give you this error?
# => they are trying to multiply 5 by respect, but r-e-s-p-e-c-t doesn't have multiplication properties. (even though it sold well #aretha_franklin).

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 152
# 2. What is the type of error message?
# =>  divided by 0 (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# => the error is that a number was divided by 0.
# 4. Where is the error in the code?
# => The number can't be divided by 0, because 0 isn't a number you can divide by.
# 5. Why did the interpreter give you this error?
# =>  The computer doens't know how to divide by 0, and that's ok.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 168
# 2. What is the type of error message?
# => errors.rb:168:in `require_relative': cannot load such file -- /Users/CGuard/Desktop/DBC-folder/phase-0/week-4/cartmans_essay.md (LoadError)

# 3. What additional information does the interpreter provide about this type of error?
# => I don't have the file the program is trying to locate
# 4. Where is the error in the code?
# => The error is trying to require a file that doesn't exist.
# 5. Why did the interpreter give you this error?
# => I don't have the file, and even if I did, this pathway doesn't lead to it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
    Which error was the most difficult to read?
probably the missing end. The difficulty with missing ends is that they always provide the last line #, they don't actually say which end is missing. That is why careful tabbing is important, so that small mistakes like forgetting an 'end' are easily identified.

    How did you figure out what the issue with the error was?
I figured this out because I've done this to myself before. I also then read the loop and saw it was never closed (arguably it was, but the function wasn't, I'm saying the loop wasn't closed based on the tabbing.)
    Were you able to determine why each error message happened based on the code?
The error messages pretty much tell you what the mistakes are if you can read them. More often than not, they provide you the line number they are on as well.
    When you encounter errors in your future code, what process will you follow to help you debug?
reading carefully is the best thing I've found. If you really can't figure it out based off of that, then there are several other small things you can do, depending on what the code is supposed to be doing. Ultimately it's important to try and catch any bugs early, so they don't trickle down and cause larger problems, or so you don't develop bad syntax habits.
=end
