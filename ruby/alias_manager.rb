def name_changer(username)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	stored_names = []
	username.each do |letter|
	 	# If there is a vowel in the array, replace the letter with the preceding vowel liste
		if vowels.include? letter 
			# comparing vowels index to get a number
			# if vowels.index(letter) == vowels.length - 1 
			if letter == vowels[vowels.length - 1]
			 # if the index of letter in the vowels array is equal to the last index (last index is equal to length of array minus one).
				index = 0 
				#(vowels.index(letter) + 1) % vowels.length # index. if its the last element in the array, we want to go back to the first elemnet in the array (which is 0 -> a)
				stored_names << vowels[index] # a 
			else 
				letter = vowels[vowels.index(letter) + 1]
				stored_names << letter
			end
		elsif consonants.include? letter 
	 		# If there is a consonant in the array, replace the letter with the preceding vowel listed
			letter = consonants[consonants.index(letter) + 1]
			stored_names << letter
			# comparing vowels index to get a number
			if consonants.index(letter) == consonants.length - 1
				index = consonants.index(letter) + 1 % consonants.length # index
				stored_names << consonants[index]
			end
		elsif letter == " "
				stored_names << letter
		end
	end 
	# research .join storedname convert an array to a string 
	stored_names.join("")
end 

saved_data = {}

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

	#  Select full name, convert the string to an array <------- Why is the array displayed vertically? ------->
	username = full_name.split("")

	# Iterate through the array and change vowels and consonants  
	fakename = name_changer(username)

	saved_data[full_name] = fakename
end

# Access data in the hash & iterate
saved_data.each do |full_name, fakename|
		puts "#{full_name} is actually #{fakename}"
	end




