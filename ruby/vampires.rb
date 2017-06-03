puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

index = 0
while index < number_of_employees

# Employee name
puts "What is your name?"
employee_name = gets.chomp

# Employee age
puts "How old are you?"
employee_age = gets.chomp.to_i

#Employee year
puts "What year were you born?"
employee_birth_year = gets.chomp.to_i

# Employee garlic choice
# *! Did I need to put an if statement? If so, did I do it right? Same for insurance choice
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
employee_garlic_choice = gets.chomp

	if employee_garlic_choice == "y"
		garlic_choice = true
	else
		garlic_choice = false
	end

# Employee insurance choice
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
employee_insurance_choice = gets.chomp

	if employee_insurance_choice == "y"
		insurance_choice = true
	else insurance_choice = false
	end 

# Employee allergies & while loop
puts "Name any allergies, one at a time. Please type 'done' when you are finished."
employee_allergies = gets.chomp

# *! Is the while loop written concisely?
index = employee_allergies
while index != "done" || index !="sunshine"
	puts "What other allergies do you have?"
	break if index == "done" || index == "sunshine"
		if index == "sunshine"
		# !* What does DBC mean when they say skip directly to the result of "probably a vampire? Do they just want me to print that result? Do I have to insert that within the case statement? Which means I need to create valid and invalid allergies variables?""
		puts "Probably a vampire."
end
end

# Set up variables for conditional logic
# Establish correct age
# *! Year in ruby? Is the rest correct?
# *! Do I need an invalid age?
current_year = Time.new
valid_age = current_year - employee_birth_year == employee_age
invalid_age = !valid_age

# Establish correct garlic choice
# *! Am I establishing the valid and invalid choices correctly by "y" and "n"? Same for insurance
valid_garlic_choice = employee_garlic_choice == "y"
invalid_garlic_choice = employee_garlic_choice == "n"

# Establish correct insurance choice
valid_insurance_choice = employee_insurance_choice == "y" 
invald_insurance_choice = employee_insurance_choice == "n"


# Detection Logic
puts results = "Resutls inconclusive"

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if valid_age && valid_garlice_choice || valid_insurance_choice
	results = "Probably not a vampire"
end

# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
if
	invalid_age && invalid_garlic_choice || valid_insurance_choice
	results = "Probably a vampire"
end

# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
if
	# *!If the employee got their age wrong, hates garlic bread, and doesn’t want insurance. Does the fact that there is no "and" that separates the employee age and garlic bread change anything?
	invalid_age && invalid_garlic_choice && invalid_age
	results = "Almost certainly a vampire"
end

#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
if 
	employee_name == "Drake Cula" || employee_name == "Tu Fang"
	results = "Definitely a vampire"
end

# Print survey results
# !* Now that I've switched to if statements, do I remove the case and just write puts results?
puts results

# # Plot twist
# if index #is about to finish
# 	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

index += 1
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end