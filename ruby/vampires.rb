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
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
employee_insurance_choice = gets.chomp

	if employee_insurance_choice == "y"
		insurance_choice = true
	else insurance_choice = false
	end 

# Set up variables for conditional logic
# Establish (do I need an invalid age?)
valid_age = employee_birth_year.time == employee_age
	else employee_age = false 
invalid_age = !valid_age

# Establish correct garlic choice
valid_garlice_choice = employee_insurance_choice == "y"
invalid_garlic_choice = employee_insurance_choice == "n"

# Establish correct insurance choice
valid_insurance_choice = employee_insurance_choice == "y" 
invald_insurance_choice = employee_insurance_choice == "n"


# Detection Logic
result  = case vampire_detector
when valid_age && valid_garlice_choice || valid_insurance_choice
	puts "Probably not a vampire"
when
	invalid_age && invalid_garlic_choice || valid_insurance_choice
	puts "Probably a vampire"
when
	# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance. Does the fact that there is no "and" that separates the employee age and garlic bread change anything?
	invalid_age && invalid_garlic_choice && invalid_age
	puts "Almost certainly a vampire"
when 
	employee_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire"
else 
	puts "Resutls inconclusive"
end

# Print survey results
puts "The employee is #{result}."