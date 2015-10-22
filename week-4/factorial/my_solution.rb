# Factorial

# I worked on this challenge [by myself, with: Peter Wood ].


# Your Solution Below
def factorial(number)
  if number < 0
    return nil
  elsif number == 0 || number == 1
    return 1
  else  total = number
    while number > 1
      total *= number-1
      number -= 1
    end
    return total
  end
end