#Psuedocode
=begin

1. create a list: just make a hash. it doesn't have to be fancy, MVP.

2. Add an item w/ a quantity to the list:
accept 2 args, which equate to key: value pair; add them to the list.

3. have method to remove an item from the list. - gonna need to review how to do this on a hash actually. I believe delete is an option, and if you delete the key it erases the value as well.

4. update quantities for items in your list:
have a method that recognizes when keys overlap, and rather than erasing one key, adds the values of the keys together.

5. print the list. have it write the full hash, probably as a string... could use interpolation though.

input: The input will be the items, and the quantity of items. It will also accept the ability to delete items, and add higher quantities.

output: the list and the quantity of each item on the list.
=end

#initial solution


def create_list
  grocery_list = Hash.new
end

def add_item(grocery_list, item, quantity)
  if grocery_list.include? [item]
    grocery_list[item] += quantity
  else
    grocery_list[item] = quantity
  end
end

def rem_item(grocery_list, item)
  grocery_list.delete(item)
end

def update_quant(grocery_list, item, quantity)
  grocery_list[item] = quantity
end

def print(grocery_list)
  grocery_list.each { |item, quantity|
    puts "buy #{item} #{quantity} times."
  }
end

grocery_list = create_list
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
rem_item(grocery_list, "Lemonade")
update_quant(grocery_list, "Ice Cream", 1)
print(grocery_list)

#Refactored

def create_list
  grocery_list = Hash.new #creates a hash called grocery list
end

def add_item(grocery_list, add_item, add_quantity)
  if grocery_list.include? [add_item] #check to see if the hash includees the item you are adding to.
    grocery_list[add_item] += add_quantity #If it does, increase the quantity by the newly given amount
  else
    grocery_list[add_item] = add_quantity #if it doesn't, add the item to the list
  end
end

def rem_item(grocery_list, item_to_remove)
  grocery_list.delete(item_to_remove) #this is kind of conditional but I didn't think the if statement was necessary. If the item isn't on the list it didn't say to include an error message.
end

def update_quant(grocery_list, update_item, new_quantity)
  grocery_list[update_item] = new_quantity #regardless of old traits, set the quantity of update_item to the new_quantity
end

def print(grocery_list)
  grocery_list.each { |item, quantity|
    return "Buy #{item} #{quantity} times." #interpolation! puts a pretty line telling you to buy an item a certain amount of times.I guess it could be phrased less commandingly.
  }
end

grocery_list = create_list
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
rem_item(grocery_list, "Lemonade")
update_quant(grocery_list, "Ice Cream", 1)
print(grocery_list)

#each method called.

#reflection:

=begin
    What did you learn about pseudocode from working on this challenge?
I think I've improved at psuedo coding, and not trying to compress too much code into one single step for a problem.

    What are the tradeoffs of using Arrays and Hashes for this challenge?
I didn't try using an array, because a hash lets you incorporate a quantity as a value to the key which is the grocery item. For me the key value pair made the hash the go to for this challenge.
    What does a method return?
A method can return an object, but it ultimately returns the result of the code block.
    What kind of things can you pass into methods as arguments?
You can pass hashes, arrays, strings, numbers, or classes as arguments.
    How can you pass information between methods?
by creating something (such as a hash) that can be passed in as an argument. I still need practice with this idea I'll be honest. But pretty much you can create an object (grocery_list is an example) which can then be passed in because it's an object.
    What concepts were solidified in this challenge, and what concepts are still confusing?
Passing information between methods is going to take a little more practice to have as a rock solid thing. I may need to jog my memory on it again depending on how long it is until I do it again.

=end