# *! Does the until loop need to have the number of employees assigned to the index (for the countdown)? Does the bottom half of the while loop belong at the end of the program? Why doesn't the subtraction portion of the employee number work?
puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

i = number_of_employees
until i == 0 
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
puts "Name any allergies, one at a time. Please type "done" when you are finished."
employee_allergies = gets.chomp

# *! Is the while loop written concisely?
i = employee_allergies
while i != "done" || "sunshine"
	puts "What other allergies do you have?"
	if i == "sunshine"
		# !* What does DBC mean when they say skip directly to the result of "probably a vampire? Do they just want me to print that result? Do I have to insert that within the case statement? Which means I need to create valid and invalid allergies variables?""
		puts "Probably a vampire."
	break if i == "done" || "sunshine"
end


# Set up variables for conditional logic
# Establish correct age
# *! How do I get year in ruby? Is the rest correct?
# *! Do I need an invalid age?
time = Time.new
valid_age = time - employee_birth_year == employee_age
invalid_age = !valid_age

# Establish correct garlic choice
# *! Am I establishing the valid and invalid choices correctly by "y" and "n"? Same for insurance
valid_garlice_choice = employee_insurance_choice == "y"
invalid_garlic_choice = employee_insurance_choice == "n"

# Establish correct insurance choice
valid_insurance_choice = employee_insurance_choice == "y" 
invald_insurance_choice = employee_insurance_choice == "n"


# Detection Logic
# *! What do I put after the case. I know it has to be an object, but in this instance, is there a designated object? Or is just something I can name? 
# *! I put down result before the "= case" because I saw it formatted that way online, is that correct?

employee = employee_name

result  = case employee
when valid_age && valid_garlice_choice || valid_insurance_choice
	puts "Probably not a vampire"
when
	invalid_age && invalid_garlic_choice || valid_insurance_choice
	puts "Probably a vampire"
when
	# *!If the employee got their age wrong, hates garlic bread, and doesn’t want insurance. Does the fact that there is no "and" that separates the employee age and garlic bread change anything?
	invalid_age && invalid_garlic_choice && invalid_age
	puts "Almost certainly a vampire"
when 
	employee_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire"
else 
	puts "Resutls inconclusive"
end

# Print survey results
# !*Is this how I call the case statement to execute the above?
puts case "The employee is #{employee}."

# Plot twist does this need to be embedded within the initial while loop from the start?
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

i -= 1 
end 