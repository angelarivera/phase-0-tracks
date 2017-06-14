# R E L E A S E   Z E R O 

class Santa 
	def initialize (gender, ethnicity)
		# Can't have a Santa with no gender or ethnicty.
		# The following are instance variables.
		# The @ sign lets it be used throughout the entire class. 
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookietype)
		puts "That was a good #{cookietype}!"
	end
end 



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




# R E L E A S E   T W O 





