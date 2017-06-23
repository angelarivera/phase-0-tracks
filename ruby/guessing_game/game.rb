# REQUIREMENTS
# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word. 

# Guesses are limited, and the number of guesses available is related to the length of the word.

# Repeated guesses do not count against the user.

# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

# The user should get a congratulatory message if they win, and a taunting message if they lose.
#################

# PSEUDOCODE

# Define a game class, Initialize it with word to be guessed
  # Also in the Initialize add the guess limit
  
# METHOD: Initialize
# Input: A Word
# Output: Starts all the instance variable
  # def @word as the winning word
  # def @max_guesses as the length of the word
  # def @guesses as an array of all the guesses
  # def @counter at 0 to count the guesses
  # def @current_word shows the current state of the word

# METHOD: Guess a letter
# Input: A letter in a string
# Output: True or False (Updated counter, Updated guesses, etc.)
  # IF the letter is inlcuded in the word
    # Replace the underscore in the current word with letter
    # Show if the letter is there
  # ELSE
    # Show if the letter isn't there
  # Add +1 to counter IF letter hasn't be guessed
  # Push letter to the guesses
  # Check IF game is over
    # Check if number of guess
    # Check if word is correct
  
# METHOD: Replace a letter
# Input: Letter as a string
# Output: Underscore replace as a letter
  # Find the index of the letter in word 
  # Use index in current_word and replace it with letter

# METHOD: Display state of word
# Input: Current word (instance variable)
# Output: Updated current word, as a string
  # Join the array with a space and write a message

# METHOD: Win/lose condition message
# Input: Take in Counter, max guesses, current word, word
# Output: String with a message
  # IF lose
    # Lose message
  # Else
    # Win Message

class Game
  attr_accessor :game_over
  
  def initialize(word)
    @word = word
    @max_guesses = word.length
    @guesses = []
    @counter = 0
    @current_word = Array.new(word.length, "_")
    @game_over = false
  end
  
  def guess_letter(letter)
    if @word.include?(letter)
      p "#{letter} is in the Word."
      replace_letter(letter)
    else
      p "#{letter} is Not in the Word."

      @counter += 1 if !@guesses.include?(letter)
    end
    
    @guesses << letter
    
    if @counter == @max_guesses || @word == @current_word.join()
      game_over_message
      @game_over = true
    end
  end
  
  def replace_letter(letter)
    @word.split("").each_with_index do |element,index|
      if element == letter
        @current_word[index] = letter
      end
    end
  end
  
  def display_current_word
    p "Current Word: #{@current_word.join(" ")}"
  end
  
  def game_over_message
    if @word == @current_word.join()
      p "You won"
    else
      p "You lose"
    end
  end
end

p "What word would you like to use?"
word = gets.chomp
game = Game.new(word)

while !game.game_over
 p "Guess a letter:"
 x = gets.chomp
 game.guess_letter(x)
 game.display_current_word
end




