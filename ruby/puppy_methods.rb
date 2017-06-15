# # R E L E A S E   Z E R O 

# class Puppy

# 	def fetch(toy)
# 		puts "I brought back the #{toy}!"
# 		toy
# 	end

# # Add a speak method that takes an integer, and then prints "Woof!" that many times
# 	def speak(integer)
# 		puts "Woof!" * integer
# 	end

# # Add a roll_over method that just prints "*rolls over*".
# 	def roll_over
# 		puts "*rolls over*"
# 	end

# # Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
# # 7 human years is equivalent to 1 dog year
# 	def dog_years (age)
# 		puts age / 7
# 	end 

# # Add another method of your choice
# 	def high_five
# 		puts "*raises paw*"
# 	end

# # R E L E A S E   O N E  

# # Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..."
# 	def intialize 
# 		puts "Initializing new puppy instance . . ."
# 	end

# end

# # # D R I V E R   C O D E 

# # Initialize an instance of a puppy
# hendrix = Puppy.new

# # Verify instance can fetch ball
# hendrix.fetch("ball") 

# # Verify speak method
# hendrix.speak(10)

# # Verify roll over
# hendrix.roll_over

# # Verify high five
# hendrix.high_five

# # Verify dog_years method
# hendrix.dog_years(26)


# Release Two
# Design and implement your own class
class BasketballPlayer
	# Initialize method
	def initialize 
		puts "Initializing new basketball player instance"
	end 	

	# Instance method
	def shoot 
		puts "*Swish*"
	end

	# Instance method
	def cheer (name)
	puts "Go #{name}!"
	end
end 

# Design and implement your own class below the Puppy class
# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data structure.
# Iterate over that data structure & Call the instance methods you wrote on each instance

roster = []

# Use a loop to make 50 instances of your class.
50.times do 
	newplayer = BasketballPlayer.new
	# Modify your loop so that it stores all of the instances in a data structure.
	roster << newplayer
end

# Iterate over that data structure using .each
roster.each do |player|
# Call the instance methods you wrote on each instance.	
	player.shoot
	player.cheer("Steph Curry")
end






