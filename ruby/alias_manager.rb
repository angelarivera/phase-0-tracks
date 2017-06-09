# Ask for first name, change input to lowercase letters
puts "What is your first name?"
first_name = gets.chomp.downcase

# Ask for last name, change input to lowercase letters
puts "What is your last name?"
last_name = gets.chomp.downcase

# Swap names <----- Is this a concise way to swap? ----->
full_name = last_name +  "" + first_name

# Select full name, convert the string to an array
full_name.split("")

# Iterate through the array and change vowels and consonants  
def name_changer(full_name)
	vowels = ["a", "e", "i", "o", "u", "y"]
	consonants = []
	full_name.map! do |letter|
		if vowels.include? letter




	vowels = ["a", "e", "i", "o", "u", "y"]
	user_name.each  do |letter|
		if vowels.include letter
		index[letter] == .next


	# consonants


end  

# for each letter in the name
# see if its a vowel
# if it is then what is the index of the vowel
# and set that vowel to the following +1 item index 
# if the letter in the full namer variable is "u" 
# then program the computer to automatically go to the letter a 
# return value will be changed name (with vowels changed)
# set that return value to a new variable 


# def consonantchanger (full name)
# get result from new name from vowel changer
# consants = [b,c,f,l]
# return value will be changed name 

# new first name


#    If an item in the first name array has the letters "a,e,i,o, u" take the index that vowel is in and change it to the following vowel. (Example: a -> e) 
#    Create an alphabet variable that has "a-z" to reference.
#    If an item in the first name array has a consonant take the index of that consonant and change it to the letter that follows it in the alphabet
# Place both of these changes in an empty array (.map)? Or .map!?












# Select last name, convert the string to lowercase letters
# Select lower case last name, convert the string to an array

# Iterate through the array, 
#    If an item in the last name array has the letters "a,e,i,o, u" take the index that vowel is in and change it to the following vowel. (Example: a -> e) 
#    Create an alphabet variable that has "a-z" to reference.
#    If an item in the last name array has a consonant take the index of that consonant and change it to the letter that follows it in the alphabet
# Place both of these changes in an empty array (.map)? Or .map!?

# one method per step, insdie that method you can be focused on that one thing you have to do! 