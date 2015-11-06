class Book
  attr_reader :title
  attr_accessor :pages
  attr_reader :pages_to_make

  def initialize(title, pages)
    @title = title
    @pages = []
    @pages_to_make = pages
    if pages.to_i > 10 || pages.to_i < 1
      raise ArgumentError.new("It's a short example, please use 10 pages or less, but more than 1 page")
    end
  end

  def create_pages
    x = 1
    while x < pages_to_make
      @pages.push("page#{x}")
      x += 1
    end
    p @pages
  end

  def read
    i = 0
    while i < @pages_to_make - 1
      puts "You are currently on #{@pages[i]}"
      puts "Pretend you are done reading the page, would you like to turn the page?"
      answer = gets.chomp
      if answer.downcase == "yes"
        i += 1
        puts "you have turned the page to #{@pages[i]}!"
        puts
      else
        puts "ok, you can stay on the page you are on. Gotta love choices."
        puts "we'll put this book down for you"
        break
      end
    end
  end
end

testbook = Book.new("bookiness", 9)
testbook.create_pages
testbook.read