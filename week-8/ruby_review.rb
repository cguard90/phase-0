# Create a Car Class from User Stories

# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
=begin
create a class 'car'; allow for model, and color upon creation
=end
=begin
# identify the distance that needs to be driven,
=end

# car should have attribute of speed - which can change

# car has method turn to be able to turn left or right
# car has accelerate and decelerate methods.
# track distance travelled
# output latest action of car.


# 3. Initial Solution
# class Car
#     attr_accessor :speed
#     attr_accessor :total
#     attr_accessor :space
#     attr_accessor :pizza_in_car

#   def initialize(model, color)
#     @model = model,
#     @color = color
#     @speed = 0
#     @total = 0
#     @pizza_in_car = []
#   end

#   def pizza_included(type)
#     pizza_in_car.push(type)
#     puts pizza_in_car.to_s
#   end

#   def drive(distance)
#     if distance.to_i < 0
#       raise ArgumentError("The distance must be a number, in miles that will be traveled")
#     else
#       @total += distance
#       puts "you have driven #{distance}. Your total distance covered so far is #{@total}."
#     end
#   end

#   def turn(way)
#     if way != 'left' && way != 'right'
#       raise ArgumentError("You can only turn either left or right here")
#     else
#       puts "You have turned #{way}"
#     end
#   end

#   def accelerate(speed_up)
#     if speed_up <= 0
#       raise ArgumentError("Speeding up must be done with a positive number")
#     else
#       @speed += speed_up
#       puts "You are driving #{@speed}mph."
#     end
#   end

#   def decelerate(slow_down)
#     if slow_down <= 0
#       raise ArgumentError("please provide a positive number you would like to slow down by")
#     else
#       @speed -= slow_down
#       puts "You are now at #{@speed}mph."
#       if @speed == 0
#         puts "You have delivered #{@pizza_in_car[0]}"
#         pizza_in_car.shift
#       end
#     end
#   end

#   def current_speed
#     puts @speed
#   end

#   def total_distance
#     puts @total
#   end
# end

# class Pizza
#   attr_reader :type
#   def initialize(type)
#     @type = type.to_s
#   end
# end


# 4. Refactored Solution
#accelerate can be 1 method.
#total is unnecessary becuase it is tracking the distance covered as it goes.

class Car
    attr_accessor :speed
    attr_accessor :total
    attr_accessor :space
    attr_accessor :pizza_in_car

  def initialize(model, color)
    @model = model,
    @color = color
    @speed = 0
    @total = 0
    @pizza_in_car = []
  end

  def pizza_included(type)
    pizza_in_car.push(type)
    puts pizza_in_car.to_s
  end

  def drive(distance)
    if distance.to_i < 0
      raise ArgumentError("The distance must be a number, in miles that will be traveled")
    else
      @total += distance
      puts "you have driven #{distance}. Your total distance covered so far is #{@total}."
    end
  end

  def turn(way)
    if way != 'left' && way != 'right'
      raise ArgumentError("You can only turn either left or right here")
    else
      puts "You have turned #{way}"
    end
  end

  def accelerate(speed_change)
      @speed += speed_change
    if @speed > 0
      puts "You are now driving #{@speed}mph."
    elsif @speed == 0
        puts "You have stopped, and delivered #{@pizza_in_car[0]}"
        pizza_in_car.shift
    else
      puts "I'm broken"
    end
  end

  def current_speed
    puts "You check to see you are at #{@speed}mph."
  end
end

class Pizza
  attr_reader :type
  def initialize(type)
    @type = type.to_s
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

my_car = Car.new("mustang", "red")
veggie = Pizza.new("Vegetarian Pizza")
meat = Pizza.new("Meat lovers Pizza")
regula = Pizza.new("Normal Pizza")
my_car.pizza_included(veggie.type)
my_car.pizza_included(meat.type)
my_car.pizza_included(regula.type)
my_car.accelerate(25)
my_car.drive(0.25)
my_car.accelerate(-25)
my_car.turn('right')
my_car.accelerate(35)
my_car.drive(1.5)
my_car.current_speed
my_car.accelerate(-20)
my_car.drive(0.25)
my_car.accelerate(-15)
my_car.turn('left')
my_car.accelerate(35)
my_car.drive(1.4)
my_car.accelerate(-35)




# 5. Reflection


# What concepts did you review or learn in this challenge?
=begin
The concepts I reviewed in this challenge were classes, methods, and then having instances of classes interact. That part was new, having 2 class instances interact. I may not have the most awesome problem to challenge, but it was a good time.

# What is still confusing to you about Ruby?
I don't know if there is anything I would necessarily call confusing about it presently. I know there's a lot I don't know about it, but i just need to keep practicing.

# What are you going to study to get more prepared for Phase 1?
I think the more methods I can expose myself to the better. Additionally as I work with javascript more it has become easier to recognize ahead of time when my syntax in ruby is correct / incorrect.