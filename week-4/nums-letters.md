        What does puts do?
Puts takes a string, and prints it out to the console on a new line. It is different than print becuase print doesn't go to a new line unless you add a line break.

        What is an integer? What is a float?
An integer is a whole number (like 5). A float is a number with a decimal point.

        What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integer division will always return a number without a decimal, so it rounds down to the nearest whole number. Float division includes the decimal. To explain it to them, I would talk about it in terms of fluffy bunnies. It's memorable. The computer when it divides, looks at the final amount as if they were fluffy bunnies. You can't have half a fluffy bunny, you can only ever have a fluffy bunny (I'm assuming you're not planning on having the bunny for dinner, and that you're not considering a smaller fluffy bunny as half a bunny).

Hours in a year:

''''ruby
puts 24 * 365
''''

Minutes in a decade:

''''ruby
puts 60 * 24 * 365 * 10
''''

[defining-variables.rb](defining-variables.rb)
