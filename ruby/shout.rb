# Declaring a module
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		"*ultralight beam*" + words.upcase "*ultralight beam"
	end
end


# Calling a module method
p "Shout"