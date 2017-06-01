#hamsters name
puts "Input name of hamster?"
hamster_name = gets.chomp

#hamsters volume level
puts "What is the volume level?"
volume_level = gets.chomp.to_i

#hamsters fur color
puts "What is the hamster color?"
hamster_color = gets.chomp

#hamster adoption
puts "Is the hamster a good candidate for adoption? (y/n)"
input=gets.chomp
while input != "y" && input != "n"
	puts "Not valid answer. Is the hamster a good candidate for adoption? (y/n)"
	input=gets.chomp
end
if input == "y" 
	adoption = true
else 
 	 adoption = false	
end

#hamster age
puts "What is the hamsters estimated age?"
age = gets.chomp.to_f

#if user leave age empty
if age == ""
	age = nil
end




