# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

#The first number in the sub-arrays correspond to the letter "B", the second "I", the third "N", the fourth "G", and the fifth "O". So if the call was N34, you would look in the third column for the number 34. If the number is on your board, you'll replace it with an "X."


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)      done

#bingo should correspond to the index of the number within the array... probably going to have to try an if loop here. if number @ index * is called, return the letter that corresponds to that index.     made it too complex....

# Check the called column for the number called.
#identify the index of the number called, index == column

# If the number is in the column, replace with an 'x'
#if element is identified in that particular array, replace with x; else nothing.

# Display a column to the console
#column should display at the end of each number

# Display the board to the console (prettily)
  #this will be a pain.

# Initial Solution

class BingoBoard
  attr_accessor :bingo_board
  attr_reader :letters
  attr_accessor :call_out

  def initialize(board)
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
    @call_out = []
  end

#Create a method to call letters and numbers (like B43). It will need to generate a letter ( "B", "I", "N", "G", "O") and a number from 1 to 100.
  def call_out_update
    @call_out[0] = letters.sample
    @call_out[1] = rand 1..100
    p @call_out
  end

  def check_board(call_out)
    called_letter = call_out[0]
    called_num = call_out[1]
    check_letters = []
    check_letters << @bingo_board
#need to find the number in the array. if the number is in index 0, return B, if it's in index 1, return I, if it's in index 2 return N, else G, else 0
#index is an array method, so you can't call index on the element itself. this is also an enumerator.
    if called_letter == 'B'
      i = 0
      check_letters.map! { |array|
        if array.is_a? Array
          array.each { |array_num|
            if called_num == array_num[0]
              array[i].shift
              array[i].insert(0, 'x')
            else
              i += 1
            end
          }
        end
      }
    elsif called_letter == 'I'
      i = 0
      check_letters.map! { |array|
        if array.is_a? Array
          array.each { |array_num|
            if called_num == array_num[1]
              array[i].shift
              array[i].insert(1, 'x')
            else
              i += 1
            end
          }
        end
      }
    elsif called_letter == 'N'
          i = 0
      check_letters.map! { |array|
        if array.is_a? Array
          array.each { |array_num|
            if called_num == array_num[2]
              array[i].shift
              array[i].insert(2, 'x')
            else
              i += 1
            end
          }
        end

      }
    elsif called_letter == 'G'
          i = 0
      check_letters.map! { |array|
        if array.is_a? Array
          array.each { |array_num|
            if called_num == array_num[3]
              array[i].shift
              array[i].insert(3, 'x')
            else
              i += 1
            end
          }
        end

      }
    elsif called_letter == 'O'
          i = 0
      check_letters.map! { |array|
        if array.is_a? Array
          array.each { |array_num|
            if called_num == array_num[4]
              array[i].shift
              array[i].insert(4, 'x')
            else
              i += 1
            end
          }
        end
      }
    else
      puts "what?"
    end
    @bingo_board == check_letters
  end

  def print_board
    puts @bingo_board[0].to_s
    puts @bingo_board[1].to_s
    puts @bingo_board[2].to_s
    puts @bingo_board[3].to_s
  end
end


# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [84, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check_board(['B', 75])
new_game.print_board
#Reflection
