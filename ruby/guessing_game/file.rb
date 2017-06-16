# Start new game
# Ask user for secret word
# Set the max number of guesses to the length of the secret word
# Save secret word to a variable 
# Save the secret word variable into an array with .split
#! Create a placeholder array that is made up of underscores that equal the length of secret word array.
# Create an array to store good_letter_guesses
# Create an array to store bad_letter_guesses
# Show the user the placeholder array
# Ask second user to guess a letter
# Check what the guessed letter triggers
# If guessed letter is in the secret_word_array
	# update the good_letter_guesses
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

class Game

	def initialize(secret_word)
		@secret_word = secret_word
		@guess_count = 0
		@guesses = []
		@placeholder = "_"
	end

	def placeholder_feedback
		placeholder = @secret_array
		# How do i get placeholder to display the given length of the secret word with underscores?
	end

	def correct_guess(letter_guess)
		if @secret_array.include? letter_guess
			@good_letter_guesses << letter_guess
			@placeholder << # Do I update the placeholder with the correctly guessed letter in this correct guess method or is this done in the placeholder_feedback instance method?
		end
	end
end



puts new_game = Game.new("win")

puts "What is your secret word?"
secret_word = gets.chomp

puts new_game.placeholder_feedback
puts "What letter do you want to guess?"
letter_guess = gets.chomp


