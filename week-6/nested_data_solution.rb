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