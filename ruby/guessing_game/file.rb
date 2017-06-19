# Start new game
# Ask user for secret word
# Set the max number of guesses to the length of the secret word
# Save secret word to a variable 
#! Create a placeholder array that is made up of underscores that equal the length of secret word array.
# Create an array to guesses
# Show the user the placeholder array
# Ask second user to guess a letter
# Check what the guessed letter triggers
# If guessed letter is in the secret_word_array
	# update the placeholder
# If guessed letter is not in the secret_word_array && in the bad_letter_guesses array
	# don't add one to the guess_count
# If guessed letter is not in the secret_word_array
	# update the bad_letter_guesses
	# add one to the count the guess count
# Break if placeholder is == secret_word_array
	# puts "You win" || 
# Break if guess count has reached the number of the secret word.length 
	# puts message of "You lose"

	# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

class Game

	def initialize(secret_word)
		@secret_word = secret_word
		@guesses_remaining = secret_word.length
		@guesses = []
		@placeholder = "_" * secret_word.length
	end


	def replace_correct_letter
		# do actual updating
		# should we replace the correct letter?
		# what is the index for the guess in relation to the secret word?
		# placeholder
	end 

	def return_replace_letter
		# do we need to even correct  the letter?
	end

	def game_over?
		if guesses_remaining == 0 
			puts "Game over"
		elsif placeholder == secret_word
	end





	# secret_word.chars.each_with_index | characters, indx |
	# if secret_word.include?(guess)

	# def placeholder_feedback
	# 	placeholder = @secret_array
	# 	# How do i get placeholder to display the given length of the secret word with underscores?
	# end

	# def correct_guess(letter_guess)
	# 	if @secret_array.include? letter_guess
	# 		@good_letter_guesses << letter_guess
	# 		@placeholder << # Do I update the placeholder with the correctly guessed letter in this correct guess method or is this done in the placeholder_feedback instance method?
	# end
end


puts new_game = Game.new("win")

puts "What is your secret word?"
secret_word = gets.chomp

puts new_game.placeholder_feedback
puts "What letter do you want to guess?"
guesses = gets.chomp


