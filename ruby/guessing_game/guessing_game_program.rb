# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

class Game
	attr_reader :guess_count
	attr_accessor :secret_word, :letter_guess

	def initialize (secret_word)
		@secret_word = secret_word
		@letter_guess = letter_guess
		@guess_count = 0
		# Takes word and splits the string into items in an array
		@secret_word_array = secret_word.split
		@guessed_letters = []
		# Array legnth determined by length of secret word.
		@max_guess = secret_word.length
	end

	def take_in_guess
		# input of a letter 
		# checks the guess and decides what to update
	end

	def game_status
		# figure out a way to retrive/calculate what letters have been guessed.
		secret_word.length
		game_status = []
		# secret_word.length
		# secret_word.each do |letter|
			# read each letter with an "_"
			# decide whether to put in a letter or underscore
		# game_status << secret_word.length.times
	end 

	# Creates an empty array to store guesses
	guessed_letters = []

	# Defines the max number of guessses allowed
	max_guess = secret_word.length

	def guess_counter(index)
		if @letter_guess != secret_word_array
			@guess_count += 1
		end 
	end

	def win_message
		if game_status == secret_word_array
			puts "You win!"
		end
	end 
	# create a method that takes in letter guess
end

# D R I V E R   C O D E

loop do 
	if guess_counter < max_guess
	puts "Welcome to the guessing game"
	# Create a new_game instance of the game class
	new_game = Game.new 

	puts "Player one, what word do you want the user to guess?"
	secret_word = gets.chomp

	puts "Player two, what letter do you want to guess?"
	puts new_game.game_status # => "_ _ _ _ _" (length determind by secret word)
	letter_guess = gets.chomp

	else 
	puts "Game Over!"
end 
end 





# Ask user one for a word (pizza) FIRST VARIABLE 
# Save the word into a variable
# Split and assign the word into an array
# SECOND VARIABLE [] "_ _ _ _ _" array[0] = "h" "h _ _ _ _ "
# EMPTY ARRAY [] (is filled with all guesses that user two makes)

# Set a limit of user guesses based off the length of the word
# While (guesses is less than max guesses) user hasn't reached guess count
	# Display to user two the hidden word they need to guess "_ _ _ _ _" 
	# How do you generate that hidden word...
	# Ask user two to guess a letter (z)
	# Assign guessed letter a variable
	# If guessed letter == a letter in the word array
		# Find the index of the correct letter in the first variable
		# Take that number and then finding that same index in the second variable array 
		# Once I find that index, I want to replace the index with the letter
		# Replace the letter with the index
		# Puts SECOND VARIABLE with correct letter they guessed "_ _ z z _"
		# And update the game_status with the correct letter guessed "_ _ z z _"
		# And update the displayed word the user sees
	# Else add to the guess count
	# Put "incorrect guess, guess again"







	# And ask them to guess again
	# Loop over through the process again
	# Break if user spells out "p i z z a"
	

# If user two makes incorrect guess, add to the guess count
# Elsif the guess is repeated (guesses "b" twice), do not count towards the guess count
# Elsif the guess is correct, do not count towards the guess count
# If user two reaches the end of the guess count
	# Puts "Sorry you lost!"
