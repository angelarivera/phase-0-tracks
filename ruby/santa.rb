# R E L E A S E   Z E R O 

class Santa 

	# R E L E A S E   T H R E E 
	attr_reader :age, :ethnicity
	# def
	# 	@age
	# end

	# def
	# 	@ethnicity 
	# end

	attr_accessor :gender
	# def gender= (new_gender)
	# 	@gender = new_gender
	# end

	def initialize (gender, ethnicity)
		# Can't have a Santa with no gender or ethnicty.
		# The following are instance variables.
		# The @ sign lets it be used throughout the entire class. 
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0...140)
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookietype)
		puts "That was a good #{cookietype}!"
	end

	# Add three attribute-changing methods to your Santa class:

	def celebrate_birthday (age)
		age + 1 
	end

	def get_mad_at (reindeer_name)
		# get index number of given name
		@reindeer_ranking[reindeer_name.to_i]
		# delete the reindeer that was in that given index number
		@reindeer_ranking.delete(reindeer_name)
		# re-add reindeer you deleted back at to the array
		@reindeer_ranking << reindeer_name
	end
end 

# D R I V E R   C O D E
puts newsanta = Santa.new("female", "Latinx")
puts newsanta.speak 
puts newsanta.eat_milk_and_cookies("Oatmeal Rasin Cookie")
puts newsanta.celebrate_birthday(26)
puts newsanta.get_mad_at("Rudolph")
puts newsanta.age
puts newsanta.ethnicity



# R E L E A S E   O N E 

# Declaring an empty array to store diverse santas
santas = []

# Setting example_genders array for loop to reference
gender_options = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

# Setting example_ethnicities array for loop to reference
ethnicity_options = ["African American", "Latinx", "Caucasian", "Asian", "Native American", "prefer not to say"]

# creating a do loop to iterate through the array and initialize diverse santas into the empty Santas array. <---- Don't understand index
gender_options.length.times do |index|
	santas << Santa.new(gender_options[index], ethnicity_options[index])
end

p santas


# R E L E A S E   F O U R 

# Create 100 Santas
# Use array of example_genders, example_ethnicities to create your santas with a randomly selected gender and a random selected ethnicity. 
# Set your new Santa's age to a random number between 0 and 140. 
# Program should print out the attributes of each Santa using the instance methods that give you access to that data.
# "For a 100 times, I'm going to create a santa with a random gender and ethnicity, and store it inside of an array, and display that array."

# Santa.new(gender, ethnicity) 

santa_con = []

100.times { santa_con << Santa.new(gender_options.sample, ethnicity_options.sample) }
p santa_con

# To check if all 100 santas were printed
p santa_con.length




