
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

# what is going on with this hash? 1 hash state, with a a series of hashes as the value.

#Why the different syntaxes? because the states are real objects, New_hampshire makes less sense than "New Hampshire" for representing the state.

#Why is it a hashy hash? it is a hash within a hash.

#what kind of variable is state_data and what is it's scope? it is constant, and it's scope is global

# can be created in 2 places, in the main method, and inside the class. They can't be created inside a method inside of a class.

#Require relative finds a relative pathway to the file needed to include the contents of the file, at the location require_relative is included.

# require uses the environment to know the path, more similar to absolute path. usually used for including parts of a library, modules, or gems.

class VirusPredictor
  # We are defining our class with three variables. It is creating instance variable based on the input.
  def initialize(state_of_origin, population_data)
    @state = state_of_origin
    @population_data = population_data
  end
  # It is calling two methods and passing the instance variables as the arguments.
  def virus_effects
    predicted_deaths(@population_data, @state)
    speed_of_spread(@population_data, @state)
  end

  private
  #it's for maintaining interfaces, and limiting where information can be accessed from... prevents methods from being called elsewhere, it prevents method from infringing on other data.

  #This method calculates the number of predicted deaths based on the states population density and population .floor rounds the number down. It then prints it out on the screen with the given values.
  def predicted_deaths(population_data, state)
    case
      when @population_data[:population_density] >= 200
      number_of_deaths = (@population_data[:population] * 0.4).floor
      when @population_data[:population_density] >= 150
      number_of_deaths = (@population_data[:population] * 0.3).floor
      when @population_data[:population_density] >= 100
      number_of_deaths = (@population_data[:population] * 0.2).floor
      when @population_data[:population_density] >= 50
      number_of_deaths = (@population_data[:population] * 0.1).floor
    else
      number_of_deaths = (@population_data[:population] * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # The method speed of spread takes two arguments and based on the population density will increase speed of spread. It then displays on the screen with the given values that are passed to it.
  def speed_of_spread(population_data, state)
    speed = 0.0
    case
      when @population_data[:population_density] >= 200
      speed += 0.5
      when @population_data[:population_density] >= 150
      speed += 1
      when @population_data[:population_density] >= 100
      speed += 1.5
      when @population_data[:population_density] >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |state, population_data|
  s = VirusPredictor.new(state, population_data)
  s.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

=begin
Reflection
  What are the differences between the two different hash syntaxes shown in the state_data file?
So in the first Hash level, the key is a string, and in the second the key is a symbol. It makes more sense to use a string as the key name because it would make more sense to look for data for 'New Hampshire' rather than new_hampshire.

  What does require_relative do? How is it different from require?
require_relative pulls in the content from another file, and it does so by following the relative pathway provided. Require is generally for using Libraries, Modules, or Gems.

  What are some ways to iterate through a hash?
A few ways are .map, .each, you can set a variety of conditions to it as well. There are a million different things that can be done.

  When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables are just data from the inner hash, so they can be called by calling key:value pair.

  What concept did you most solidify in this challenge?
Calling information from a hash within a hash, or even passing in arguments directly from a hash. I'll probably need more review on it after we go back to Ruby from JS.
=end
