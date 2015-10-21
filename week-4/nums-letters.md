        What does puts do?
Puts takes a string, and prints it out to the console on a new line. It is different than print becuase print doesn't go to a new line unless you add a line break.

        What is an integer? What is a float?
An integer is a whole number (like 5). A float is a number with a decimal point.

        What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integer division will always return a number without a decimal, so it rounds down to the nearest whole number. Float division includes the decimal. To explain it to them, I would talk about it in terms of fluffy bunnies. It's memorable. The computer when it divides, looks at the final amount as if they were fluffy bunnies. You can't have half a fluffy bunny, you can only ever have a fluffy bunny (I'm assuming you're not planning on having the bunny for dinner, and that you're not considering a smaller fluffy bunny as half a bunny).

Hours in a year:

'''ruby
puts 24 * 365
'''

Minutes in a decade:

'''ruby
puts 60 * 24 * 365 * 10
'''

[defining variables](defining-variables.rb)

[Simple String Methods](simple-string.rb)

[Basic Math](basic-math.rb)


    How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles them based on how you input the data. If you enter the data as integers, it will handle them as integers. If you enter the data as a float, it will handle the data as a float. If it's not entered as a float, it will round down to the nearest integer if it is being divided.

    What is the difference between integers and floats?
The difference is that floats have a decimal point. Integers are whole numbers.

    What is the difference between integer and float division?
Integers get rounded down to the nearest integer during division (if there would have been a decimal), and floats get calculated to include the decimal point.

    What are strings? Why and when would you use them?
strings are a set of characters between quotes. generally speaking, they will be letters, but strings can contain any type of information. It will be displayed to the user as text when told to do so.

    What are local variables? Why and when would you use them?
local variables are variables assigned within a particular function. You would use them so that you can write the variable name instead of having to write something longer repeatedly. You can also write code around the variable, rather than having to type the whole value the variable represents out.

    How was this challenge? Did you get a good review of some of the basics?
It was a nice review, yes. It wasn't particularly challenging though, but I found it to be a nice refresh on some of the basic ruby concepts.