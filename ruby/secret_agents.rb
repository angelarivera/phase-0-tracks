# Encrypt
index = 0
alpha = "ab c"

while index < alpha.length
	alpha[index] = alpha[index].delete(" ")
	puts alpha[index] = alpha[index].next
	index += 1
end



def encrypt(word)

index = 0
# declare empty string we will add to
encrypted_word = ""
letter = ""
# setting an external variable to the word. in order to preserve the original input, you're capturing your result and giving it a new name so you don't change the original data. 
# loop over the string's letters
	while index < word.length
	  # until you get to the end of the word
	  # letter = word[index].delete(" ")
	  # use "+=" to combine returned letters(as individual strings) on one line ex. word = "hi" word += "there" output" "hithere"
	  letter = word[index].next
	  #retunrs the next letter
	  # setting value of the letter to the next letter in "the alphabet"
	  # grabbing the letter in the given index within the "word"
	  # sub "aa" for "a"
	  if letter == "aa"
	    letter = "a"
	  end
	  encrypted_word = encrypted_word + letter
	  # you're building the encrpyted to word with the new letters
	  # adding a letter to whatever the encrypted word previously was 
	  index += 1
	  # end of while loop
	end
	  p encrypted_word
end

(dog )
eph

# Output below:
# b
# c
# d

# Decrypt

# varaible = "abc"

# z
# a
# b

def decrypt(word)

index = 0
# declare empty string we will add to
decrypt_word = ""
#independent letter we're dealing with
# declare alphabet index to compare to
alphabet = "abcdefghijklmnopqrstuvwxyz"
# we need this becaues we can't go backwards, we have to manually check which letter comes before it. 
# loop over letters of string
	while index < word.length
	  # word[index] to get letter as a string. alphabet.index to get alphabet index of that matched letter (returns an integer)
	  letter_index = alphabet.index(word[index])
	  # passing the resulting value of word at the given index to the index in the alphabet variable
	  # the line above give us the number of the given index
	  # find the index of the letter in the alphabet
	  # Use letter_index result and goes back one
	  previous_letter_index = letter_index - 1
	  # Use previous_letter to get matching position (integer) to corresponding letter in the alphabet. Combines each returned letter (as individual strings) on one line
	  decrypt_word = decrypt_word + alphabet[previous_letter_index]
	  # accessing the letter in the index with the previous letter index
	  # adding the letter at the previous index
	  index += 1
	end
	  p decrypt_word
end

dog 
cnf

# decrypt("txpsegjti")

# decrypt(encrypt("swordfish"))


# The nested method call works because the encrypt method takes a string as a parameter and returns a string as the output. The resulting string from the encrypt method can be used as the parameter for the decrypt method to return a string as the output. By order of operations within this call, the encrypt method would perform first, then the decrypt method would perform to return a final string.

# DRIVER CODE

# Ask a secret agent if they would like to encrypt or decrypt a password
puts "Do you want to encrypt or decrypt a password?"
answer = gets.chomp

# Ask for the password
puts "Please enter a password to use."
password = gets.chomp

# Encrypt or decrypt given password
if answer == "encrypt"
  encrypt(password)
elsif answer == "decrypt"
  decrypt(password)
end

# End program
puts "Password provided, goodbye."
