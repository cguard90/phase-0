# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.length < 1
    return nil
  else longest_word = ''
    list_of_words.each {|word|
      if word.length > longest_word.length
        longest_word = word
      end
    }
    return longest_word
  end
end