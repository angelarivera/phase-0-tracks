# RELEASE ZERO

class Puppy

 	def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  	end

# Add a speak method that takes an integer, and then prints "Woof!" that many times
  	def speak(integer)
		"Woof!" * integer
	end

# Add a roll_over method that just prints "*rolls over*".
	def roll_over
		puts "*rolls over*"
	end

# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
# 7 human years is equivalent to 1 dog year
	def dog_years (integer)
		# 7 % 1?
	end 

# Add another method of your choice
	def high_five
		puts "*raises paw*"
	end

# RELEASE ONE 
# Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..."
# So anytime you call Puppy.new, the initialize method will run for that new instance.? 
# Without changing your driver code, run the program. Does initialize run? When?
	def intialize 
		puts "Initializing new puppy instance . . ."
	end

end

# D R I V E R   C O D E 

# Initialize an instance of a puppy
hendrix = Puppy.new

# Verify instance can fetch ball
hendrix.fetch 

# Update your driver code to demonstrate that methods work


# Release Two
# Design and implement your own class with an in initialize method
class BasketballPlayer
	def initialize 
		puts "Initializing new basketball player instance"
	end 	

	def shoot 
		puts "*Swish*"
	end

	def cheer (name)
	puts "Go #{name}!"
	end
end 





