# Virus Predictor

# I worked on this challenge Nestor C. & John G. 
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative
#  require relative statement is a link to another file to the directory that you're currently in. 

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # The initialize method is passing the parameters of state_of_origin, population_density, and population. Inside the method is decalring @state, @population, @population_density as initialized variables. 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  # The virus_effects method is taking in the predicted_deaths and speed of spread of the outbreak

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    num = case @population_density
          when(200..9999) then 0.4
          when(150..199) then 0.3
          when(100..149) then 0.2
          when(50..99) then 0.1
          else 0.05
          end

    number_of_deaths = (@population * num).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end 
  # The predicted_deaths method is creating a num variable and implementing a case statement using the @population density instance variable. It provides a series of cases that provide ranges between two numbers that assign a "num" to be provided for the equation on line 38. The value of that equation is assigned to the number of deaths variable.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density
            when(200..9999) then 0.5
            when(150..199) then 1
            when(100..149) then 1.5
            when(50..99) then 2
            else 2.5
            end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
  # The speed_of_spread method is assigning the variable of speed to equal one of the conidtions in the case statement that is met. Again, it is given a range for the population density and then assigning an integer for speed based off the range. 
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, population_info|
  VirusPredictor.new(state, population_info[:population_density],population_info[:population]).virus_effects
end



#=======================================================================
# Reflection Section
# Syntactically, the difference between the two different hash syntaxes (from the state data file) is the contrast of the keys. One key is written as a string, and the nested hash sets their keys as symbols. 

# Require relative loads a file relative to the directory it is in. 

# Require loads files not relative to the directory and is used to load ruby gems into ruby code.

# To iterate through a hash you can use the .each method. Or if .each_key if you want to iterate only through the keys, or .each_value if you want iterate only through the values. There are other ruby enumerable methods you can use. 

# When it came to refactoring, I instinctively knew that there was something about the variables that seemed repetitive. I knew they could possibly be removed, but I didn't realize that we could input a case statement and simply input ranges to make the code more DRY. 

# In this challenge I really enjoyed analyzed the way variables put in work! I definitely solidified my confidence to (to quote Tyler Keating) "chop off/down" code to make it concise and DRY.  


