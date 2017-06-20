# Psuedocode for Game
# Game behavior...
# Check if guessed letter is in the secret word
# Subtract one from the guesses remaining if guessed letter is not in the word and put it in the guessed letters array. Don't count repeat guesses
# Change underscore index item to letter if guessed letter is in the word
# End game if game_status is equal to the secret word, tell them they won
# End game if guesses remaining = 0, tell them they lost

# Game attributes...
# @word = word (word user1 inputs)
# @guesses_remaining = word.length
# @guessed_letters = [] (letter user2 inputs)
# @game_status = []

class Game

	def initialize (word)
		@word = word
		@game_status = []
		@guessed_letters_incorrect = []
		@guess_remaining = word.length
	end

	def match_guessed_letter_to_word(letter)
		@word.split.each_with_index do |item, idx|
			item  == letter.include?
	end

	def same_guess_check
	end
end



# U S E R   I N T E R F A C E

loop do 
	puts "Welcome to the guessing game"
	# Create a new_game instance of the game class
	new_game = Game.new 

	puts "Player one, what word do you want the user to guess?"
	secret_word = gets.chomp

	if @guesses_remaining = 0
		p "You've used all your guesses, game over!"
		break
	end 

	if game_status != word 
	puts "Player two, what letter do you want to guess?"
	puts new_game.game_status # => "_ _ _ _ _" (length determind by secret word)
	letter_guess = gets.chomp

	else 
	puts "Game Over!"
end 
end 


loop do 
	puts "What would you like to calculate? (Example: 4+4) Type 'done' to exit."
	# record their problem
	math_problem = gets.chomp

	if math_problem == "done"
	# Display caluclations performed to user
		calculations.each do |question, solution|
			p "#{index} calculations performed"
			p "#{question} = #{solution}"
		end
		break
	end 

	# split their problem into an array
	new_math_problem = math_problem.split('')

	p new_math_problem.length

	if new_math_problem.length != 3
		puts "Error, please reformat your question. See example."
	else 
		# picking out each element of the array, assign it to a variable, pass it into the calculate method 
		integer1 = new_math_problem[0].to_i
		operation = new_math_problem[1]
		integer2 = new_math_problem[2].to_i		

		# use the calculate method and save the answer to a variable
		answer = calculate(integer1, operation, integer2)

		# print the answer immediately to the user
		p answer 

		# Save problem and answer into the calculations hash
		calculations[math_problem] = answer

		index += 1
	end
end 