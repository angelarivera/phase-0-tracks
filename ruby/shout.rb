# Difference between mixin and reg module....stand alone module is interchangeable.


# Declaring a module
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

# Calling a module method
p Shout.yell_angrily("I don't get it")
p Shout.yelling_happily("I get it")

-------------------------------------------------------------------------------

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end


class ExcitedStudent
	include Shout
	# def attend_class 
	# self.yelling_happily("I'm here!")
	# end
end

class FrustratedStudent
	include Shout
end


excitedstudent = ExcitedStudent.new 
p excitedstudent.yelling_happily("I get it")
# p excitedstudent.attend_class

frustratedstudent = FrustratedStudent.new
p frustratedstudent.yell_angrily("I dont get it")



