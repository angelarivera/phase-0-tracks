# Encrypt method 
def encrypt(password)
	index = 0
	encrypted_password = ""
	letter = ""
		while index < password.length
		  letter = password[index].next
		  if letter == "aa"
		    letter = "a"
		  end
		  encrypted_password = encrypted_password + letter
		  index += 1
		end
		  p encrypted_password
end

# Decrypt method
def decrypt(password)
	index = 0
	decrypted_password = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"
		while index < password.length
		  letter_index = alphabet.index(word[index])
		  previous_letter_index = letter_index - 1
		  decrypted_password = decrypted_password + alphabet[previous_letter_index]
			index += 1
		end
		  p decrypted_password
end


# decrypt(encrypt("swordfish"))
# The nested call agent works because we have clearly defined both an encrypt method and a decrypt method. The nest call takes in a an arguemnt of "swordfish" and then encrypts the string as "txpsegjti". Ruby will then take that output (string) and use it as an argument for the decrypt method to return the final output. It is important to note that ruby begins at the innermost parenthesis and works its way outwards. 


# DRIVER CODE

# Ask a secret agent if they would like to encrypt or decrypt a password
puts "Would you like to encrypt or decrypt a password?"
user_choice = gets.chomp

# Ask for the password
puts "Enter a password"
user_password = gets.chomp

# Encrypt or decrypt given password
if user_choice == "encrypt"
  encrypt(user_password)
elsif user_choice == "decrypt"
  decrypt(user_password)
end

# End program
puts "Thanks, here's your password!"

