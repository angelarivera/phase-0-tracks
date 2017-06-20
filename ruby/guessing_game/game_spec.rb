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



require_relative 'game'

describe Game do
  let(:wordgame) { Game.new ('hello') }

  # it "checks if guessed letter" do
  #   expect(calculator.add(3,4)).to eq 7
  # end

  # it "subtracts two integers" do
  #   expect(calculator.subtract(7,1)).to eq 6
  # end

  # it "multiplies two integers" do
  #   expect(calculator.multiply(2,3)).to eq 6
  # end
end