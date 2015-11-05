# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:  16 digit number
# Output: determines if valid number, return true / false
# Steps:

#determine valid number
#individual methods (3)
#1: check credit card number, and raise argument error
#2 create a method to double every other digit, starting with the second to last digit (moving backwards),
#3 define a method to sum all the untouched digits, and the doubled digits. doubled digit numbers must be split
#4 define a method to determine if the sum of the numbers is a multiple of ten, it is a valid number. return true or false



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  attr_reader :number

  def initialize(number)
    @card_number = number.to_s
    unless @card_number.length == 16
      raise ArgumentError.new "Card must be 16 numbers in length"
    end

  end

  def check_card
    split_nums = @card_number.split('')
    split_nums.map! { |nums|
      nums.to_i
    }
    p split_nums

    every_other = []
    splits_nums.each_with_index  do |i|
      if i % 2 == 0
        every_other.push[i]
      end
    end


#     split_nums.map! { |int|
#         int *= 2
#     }
#     p split_nums


  end

  #def double_digits
    #create an empty array,
   #p split_nums = @card_number.split('')
    #start with 2nd to last digit, double that number, and every second digit moving towards index[0]
  #  even_nums = []
   # split_nums.each {
   #   if split_num.index % 2 == 0
   #     even_nums << split_nums
   #   end
   #   }
  #end
end

test = CreditCard.new(4563960122001999)

test.split_and_double
# Refactored Solution








# Reflection