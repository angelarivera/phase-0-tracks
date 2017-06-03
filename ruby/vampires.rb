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
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	employee_garlic_choice = gets.chomp

		if employee_garlic_choice == "y"
			garlic_choice = true
		else
			garlic_choice = false
		end

	# Employee insurance choice
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	employee_insurance_choice = gets.chomp

		if employee_insurance_choice == "y"
			insurance_choice = true
		else insurance_choice = false
		end 

	# Employee allergies
	puts "Name any allergies, one at a time. Please type 'done' when you are finished."
	employee_allergies = gets.chomp

	# While loop for allergies
	allergy = employee_allergies
	while allergy != "done"
		puts "What other allergies do you have?"
		allergy = gets.chomp
		if allergy == "sunshine"
				puts "Probably a vampire."
		end
	end

	# Set up variables for conditional logic
	# Establish correct age
	# *! Do I need an invalid age?
	current_year = Time.new.year
	valid_age = current_year - employee_birth_year == employee_age
	invalid_age = !valid_age

	# Detection Logic
	# puts results = "Resutls inconclusive"

	# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

	if valid_age && (garlic_choice || insurance_choice)
		results = "Probably not a vampire"
	end

	# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
	if
		invalid_age && ( !garlic_choice || !insurance_choice)
		results = "Probably a vampire"
	end

	# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
	if
		invalid_age && !garlic_choice && ( !insurance_choice)
		results = "Almost certainly a vampire"
	end

	#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	if employee_name == "Drake Cula" || employee_name == "Tu Fang"
		results = "Definitely a vampire"
	else 
		puts "Results inconclusive"
	end

	# Print survey results
	puts results 

	# # Plot twist
	# if index #is about to finish
	# 	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

	index += 1
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end