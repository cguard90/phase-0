// psuedocode:

// use an object, because you still need to have the key value pairs. for step 1, have a function that creates an empty object no input, output is a new empty object.

// add an item to the list. Write a function that takes an item, and a quantity, and passes it into the object as a key value pair.

// remove an item from the list. input is the list, and the item. Output will be the list, without the item

// update quantity - update either add the item to the list / set the item quantity equal to the new amount. input is the list, the item and the quantity. output is the updated list

// print the list, in an aesthetically pleasing way. list is the input, output is also the list.

var new_list = function() {
  grocery_list = {}
}

var add_item = function(grocery_list, item, quantity) {
  if (grocery_list.hasOwnProperty(item)) {
    grocery_list[item] += quantity
  }
  else {
    grocery_list[item] = quantity
  }
}

var rem_item = function(grocery_list, item) {
  delete grocery_list[item]
}

var update_quant = function(grocery_list, item, quantity) {
  grocery_list[item] = quantity
}

var print = function(grocery_list) {
  for (item in grocery_list){
    console.log(item + ' purchase ' + grocery_list[item] + ' amount.');
  }
}

// refactored solution

var new_list = function() {
  grocery_list = {}
}

var add_item = function(grocery_list, item, quantity) {
    grocery_list[item] = quantity
}

var rem_item = function(grocery_list, item) {
  delete grocery_list[item]
}

var print = function(grocery_list) {
  for (item in grocery_list){
    console.log(item + ' purchase ' + grocery_list[item] + ' amount.');
  }
}

// removed update_item function because it is redundant.

grocery_list = new_list
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
rem_item(grocery_list, "Lemonade")
add_item(grocery_list, "Ice Cream", 1)
print(grocery_list)