# Ask for first name, change input to lowercase letters
puts "What is your first name?"
first_name = gets.chomp.downcase

until first_name == "quit" 

# Ask for last name, change input to lowercase letters
puts "What is your last name?"
last_name = gets.chomp.downcase

# Swap names <----- Is this a concise way to swap? ----->
full_name = last_name +  " " + first_name

# # Select full name, convert the string to an array <----- Is the array output okay with the space? ----->
username = full_name.split('')

# Iterate through the array and change vowels and consonants  
def name_changer(user_name)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "y", "z"]
	username.map! do |letter|
# 		# If there is a vowel in the array, replace the letter with the preceding vowel listed
		if vowels.include? letter
			letter = vowels[vowels.index(letter) +1]
# 			# Conditional to make "a" follow "y"
			if letter == "u"
				letter = "a"
			end
		elsif consonants.include? letter 
# 		# If there is a consonant in the array, replace the letter with the preceding vowel listed
			letter = consonants[consonants.index(letter) +1]
# 			# Conditional to make "b" follow "z"
			if letter == "z"
				letter = "b"
			end
		end
	end 
end 

# <----- Should the interface we create for the user be a single puts line (sentence) that displays their fake name through interpolation? ----->
puts "Your fake name is:"
puts name_changer(user_name)
end 


