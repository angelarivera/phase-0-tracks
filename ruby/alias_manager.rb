def name_changer(username)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "y", "z"]
	stored_names = []
	username.each do |letter|
	# 		# If there is a vowel in the array, replace the letter with the preceding vowel listed
		if vowels.include? letter
			letter = vowels[vowels.index(letter) +1]
	#           <----- In order to save the names that the user inputs to an array, is this the right idea? ----->
			stored_names << letter
	# 			# Conditional to make "a" follow "y"
			if letter == "u"
				letter = "a"
			end
		elsif consonants.include? letter 
	# 		# If there is a consonant in the array, replace the letter with the preceding vowel listed
			letter = consonants[consonants.index(letter) +1]
	#           <----- In order to save the names that the user inputs to an array, is this the right idea? ----->
			stored_names << letter
	# 			# Conditional to make "b" follow "z"
			if letter == "z"
				letter = "b"
			end
		elsif letter == " "
				stored_names << letter
		end
	end 
	# <----- If I want all the array with all the stored names to be displayed at the end of the program, do we just add a conditional? ----->
	# research .join storedname convert an array to a string 
end 

 saved_data = {"realname", "fakename"}
# putting new names into saved data
# saving old names in the 
# print hash 

loop do 
	# Ask for first name, change input to lowercase letters
	puts "What is your first name?"
	first_name = gets.chomp.downcase

	# Ask for last name, change input to lowercase letters
	break if first_name == "quit" 

	puts "What is your last name?"
	last_name = gets.chomp.downcase

	# Swap names
	full_name = last_name +  " " + first_name

	#  Select full name, convert the string to an array
	username = full_name.split('')
	puts username
	# Iterate through the array and change vowels and consonants  
	puts name_changer(username)

	if first_name == "quit"
		puts "#{"realname"} is actualy #{"fakename"}"
end





