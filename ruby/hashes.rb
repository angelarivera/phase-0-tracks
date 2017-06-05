# Pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.


# Start the Interior Designers survey 
# Questions for survey
puts "What is the client name?"
client_name = gets.chomp

puts "What is the client age?"
client_age = gets.chomp.to_i

puts "Do you have children? y/n"
client_children_choice = gets.chomp

	if client_children_choice == "y"
		have_children = true
	else 
		have_children = false
	end

	if have_children == true 
	puts "How many children do you have?"
	children_number_input = gets.chomp.to_i
	end 

puts "What is your decor theme?"
client_theme = gets.chomp

puts "What is your budget?"
client_budget = gets.chomp.to_i

puts "What is your timeline?"
client_timeline = gets.chomp

# Create an empty hash (client_information) where all information will be stored
client_information {}

# Save survey data to client_information hash
client_information["Name"] = client_name
client_information["Age"] = client_age
client_information["Children"] = client_children_choice
# If the client has children, save the children amount to the hash
if have_children == true 
client_information["Child Amount"] = children_number_input
end
client_information["Decor Theme"] = client_theme
client_information["Budget"] = client_budget
client_information["Client Timeline"] = client_timeline


p client_information






