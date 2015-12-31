# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative refers to the builtin method require by allowing you to load a file that is relative  to the file containing the require_relative statement. 
#
require_relative 'state_data'

class VirusPredictor
  #Initialize parameters as instance variables. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # virus_effects calls two methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #predicts deaths based on population and prints state info with death count
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density 
    when 0...50
    number_of_deaths = (@population * 0.05).floor
    when 50...100
    number_of_deaths = (@population * 0.1).floor
    when 100...150
    number_of_deaths = (@population * 0.2).floor
    when 200...10000
    number_of_deaths = (@population * 0.4).floor
    when 150...200
    number_of_deaths = (@population * 0.3).floor
    end
    
    #if @population_density >= 200
     # number_of_deaths = (@population * 0.4).floor
    #elsif @population_density >= 150
     # number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
     # number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
     # number_of_deaths = (@population * 0.1).floor
    #else
     # number_of_deaths = (@population * 0.05).floor
    #end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #predicts speed_of_spread by population_density and puts it in months. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when 200...1000000 then speed += 0.5
    when 150...200 then speed += 1
    when 100...150 then speed +=1.5
    when 50...100 then speed += 2
    when 0...50 then speed += 2.5
    end
      
    #if @population_density >= 200
    #  speed += 0.5
   # elsif @population_density >= 150
    #  speed += 1
   # elsif @population_density >= 100
    #  speed += 1.5
  #  elsif @population_density >= 50
   #   speed += 2
   # else
    #  speed += 2.5
  #  end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each {|k,v| VirusPredictor.new(k,v[:population_density],v[:population]).virus_effects}

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One is a string and uses => to point it to a value whereas the other is a symbol and uses : to point to its value.
What does require_relative do? How is it different from require?
require_relative refers to the builtin method require by allowing you to load a file that is relative  to the file containing the require_relative statement. 
require uses an absolute path and points to the working directory.
What are some ways to iterate through a hash?
using the each method with a key value parameter and then iterating that way. We can also point specifically to a key to return its value.
When refactoring virus_effects, what stood out to you about the variables, if anything?
We didn't really need to have the instance variables as arguments considering we only needed to point at the method to retun its value.
What concept did you most solidify in this challenge? 
Iteration and enumerables ( still need to become more familiar as well) Classes were solidified as my understanding of scope as well.

  
=end