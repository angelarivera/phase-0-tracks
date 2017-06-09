# Ask survey questions and retrive/convert client data
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

# Create an empty hash (client_information) where all information will be stored
client_information = {}

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

# Print the hash back out to the screen when the designer has answered all of the questions.
p client_information

# Give the user the opportunity to update a key
puts "Do you want to update any information? (y/n)"
client_update = gets.chomp 
	if client_update == "y"
		client_change = true
	else 
		client_change = false
	end

	if client_change == true
	puts "What information do you want to update?"
	change_answer = gets.chomp
	puts "What change do you want to make"
	target_changed_value = gets.chomp
	client_information[change_answer] = target_changed_value
end 

# Print the latest version of the hash, and exit the program.
p client_information


