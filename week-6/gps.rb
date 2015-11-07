# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.
=begin
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
=end

#refactor

$left_over = {
  "cookie" => 0,
  "cake" => 0,
  "pie" => 0
  }

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #error_counter = 3
  #each.do is iterating over the hash
  #If item is not in the library it subtracts 1 from the error counter
  #library.each do |food|
    #if library[food] != library[item_to_make]
  if !menu.has_key?(item_to_make)
      #p error_counter += -1
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end


  #variables are checking the hash, for the arguments passed in the method
  #variable order quantity modulous serving size
  count = order_quantity
  serving_size = menu.values_at(item_to_make)[0]
  bake_count = order_quantity % serving_size
  #if serving size mod is 0 then we make that item else you have leftover items
  #change case to if
  if $left_over.values_at(item_to_make)[0] > count
     $left_over[item_to_make] -= count
  elsif $left_over[item_to_make][0] < count
    while $left_over[item_to_make][0] > 0
      count -= $left_over[item_to_make][0]
    end
    return "Calculations complete, make #{count/serving_size} more items"
  elsif bake_count == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{bake_count} leftover ingredients. Suggested baking items: #{order_quantity / serving_size + 1}"
    #if modulo > 0, make 1 additional item
  end

#identify & track the leftover slices from line 73, if a new customer, and has order_quantity <= leftover, bake_count = 0
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin
What did you learn about making code readable by working on this challenge?
several things, MVP is always a good guideline. Although we didn't do so, I think this method would have been better off broken into several methods, and possibly added to a class as well. Additionally this code had a lot of unnecessary pieces, so less is more.

    Did you learn any new methods? What did you learn about them?
I used the .has_key? method for hashes. It was my first time using it, it's used to check if the key already exists in a hash.

    What did you learn about accessing data in hashes?
That if you access data stored in a hash by locating the key through a passed in argument, it returns to value as an array. That's definitely handy, I ran into that previously but never knew why.

    What concepts were solidified when working through this challenge?
Accessing data in a hash was reinforced a bit. This also reinforced my fondness for working within class structures. Those are always nice. Oh this also emphasized clear labeling as something important to do.

=end
