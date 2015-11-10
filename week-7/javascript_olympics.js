//var n = 34523453
//console.log(n.toLocaleString('en-US'))
//console.log(new Intl.NumberFormat('en-US').format(n))

// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up

// Bulk Up

function Athletes (name, event) {
  this.name = name;
  this.event = event;
  this.win = name + " won the " + event + "!";
}

var sarah = new Athletes("Sarah Hughes", "Ladies' Singles");

var mike = new Athletes("Mike Smith", "Men's 100m dash");

var array = [mike, sarah];

console.log(array[1].win);


// var bulk_up = function(array_of_athletes) {
//   win(array_of_athletes[0])
//   console.log(array_of_athletes[0].name)
//   console.log(array_of_athletes)
// }

// var win = function(athlete) {
//   athlete.win = athlete.name + " won the " + athlete.event + "!"
// }

// var athletes = [{name: "Sarah Hughes", event: "Ladies' Singles"}]


// Jumble your words

var reversing = function(str){
  var result = str.split("").reverse().join("")
  console.log(result)
}

reversing("my name is Jon")

// 2,4,6,8

var is_even = function(value) {
  return value % 2 == 0;
}

var filter_even = function(array_of_nums) {
  var even_nums = array_of_nums.filter(is_even);
  console.log(even_nums)
}

filter_even([1, 2, 4, 5, 8, 11])


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
  this.report = name + sport + quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
console.log(michaelPhelps.report)

// Reflection


    // What JavaScript knowledge did you solidify in this challenge?
//accessing items from an array, as well as helped to build on reading the syntax in Mozilla docs.
    // What are constructor functions?
// constructor functions allow you to build an object using this.property = property, it's very similar to using instance variables in a class.
    // How are constructors different from Ruby classes (in your research)? a constructor actually builds a method, to create an object, where as a class is a built in object type in ruby. Additionally class is going to have instance variables. JS will just have objects and their properties.