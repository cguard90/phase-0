# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][1][1][0]
#p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][hash:]
#p nested_data[:array][1][:hash]


# ============================================================

#<---------------------------->
# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |element|
  if element.is_a? Integer
    element+=5
  else element.kind_of? Array
    element.map! do |num|
      num+=5
    end
  end
end

# # Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
  startup_names.map! do |element|
    if element.is_a? String
      element+='ly'
    else element.kind_of? Array
      element.map! do |subelement|
          if subelement.is_a? String
            subelement+='ly'
          elsif subelement.is_a? Array
            subelement.map! do |string_element|
            string_element+='ly'
          end
        end
      end
  end
end

#refactoring

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.flatten!
startup_names.map! { |word|
  word += 'ly'
}

#reflect
=begin
    What are some general rules you can apply to nested arrays?
general rules... nesting can be handy but I'm not sure if it's the best way to store data. I think as a rule, don't name an array hash, or name a hash as array (keep labeling clear).

    What are some ways you can iterate over nested arrays?
squash them. that's a nice way (kind of kidding). .map, .each are options. knowing how many nested elements there are is handy, but if you're working with data that's 1k items + in length, you may not know exactly how many data points are nested. For now, squashing seems nice to me.

    Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
Flatten was new to me. I had known about it but had never used it before. For refactoring, it seemed like a good time to try it out. it takes all nested arrays within an array, and essentially moves them all to the first array, and then deletes the now empty arrays. In a literal sense, it goes through and deletes all but the first and last brackets.
=end
