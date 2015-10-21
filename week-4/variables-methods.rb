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