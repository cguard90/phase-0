
# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  answer = []
  if source
    source.each do |x|
      if x.to_s.include? thing_to_find
        answer << x.to_s
      end
    end
  else
    puts "Array is empty."
  end
  answer
end

def my_hash_finding_method(source, thing_to_find)
  solution = []

  if source
    source.each do |x, y|
      if source[x] == thing_to_find
        solution << x.to_s
      end
    end
  else
    puts "The Hash is empty"
  end
  solution
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|var|
    if var.is_a?(Integer)
      var + thing_to_modify
    else
      next var
    end
  }
  p source
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |var, num|
    source[var] = num + thing_to_modify
  end
  p source
end

# Identify and describe the Ruby method(s) you implemented.
#I want to create a sorting method that alphabetizes an array. I also want to create a sorting method that arranges the data in my hash by age (starting with the youngest first). I want to see what happens when I do this, but I don't want it to modify the existing data. In this example, the ages of two of the animals have changed to remove the added difficulty of ordering by name as well as age.
#
#
#numbers must come first in numerical order, and then letters in alphabetical order. Caps don't need to be accounted for in this case.

# Person 3
def my_array_sorting_method(source)
  source.sort_by { |element|
    element.to_s
  }
end

def my_hash_sorting_method(source)
  source.sort_by { |name, age|
    age
  }
end

# Identify and describe the Ruby method(s) you implemented.
# => sort_by - tells ruby to sort the elements. however all the elements need to be converted to strings, because I was getting an error message about Ruby nto wanting to sort integers and letters
#
#for the hash, sort by is still a method, but you have to specify whether you are sorting by the key or the value. As I needed to sort by the age, I needed to sort by the value.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(array)
  num_array = array.grep(0..100)
  str_array = array.grep(String)
  return num_array, str_array
end

def my_hash_splitting_method(hash)
  return hash.each_slice(1) {|slice| p slice}
end


# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#