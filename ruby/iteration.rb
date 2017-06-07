# # Release 1
# # Declare an array and a hash
# hollywood_actors = {
#   "Ryan Gosling" => "Crazy, Stupid, Love",
#   "Keira Knightley" => "Pirates of the Caribbean",
#   "Angelina Jolie" => "Mr and Mrs Smith"
# }

# cities = [
#   "l.a",
#   "caribbean",
#   "colombia"]

# # Demonstrate that you can iterate through each one using .each on hollywood_actors hash
# p hollywood_actors
# hollywood_actors.each do |actor, movie|
#   puts "#{actor} starred in #{movie}."
# end
# p hollywood_actors

# # Iterate through using .map on cities array
# p cities
# cities.map! do |city|
#   city.capitalize
# end
# p cities

# Release 2

ages = {
	"Brad" => 44,
	"Ryan" => 99,
	"Eva"  => 28,
	"Angelina" => 33
}

numbers = [
	1,
	9,
	4,
	7,
	2
]

# 1) A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
def delete_odd(ages) 
	ages.each do |name, age|
	if age.odd? 
	 ages.delete(name)
	end
	end
end

puts delete_odd(ages)

# 2) A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5). This method will capitalize any array item that contains the letter "a". 

def delete_even(numbers)
new_numbers = []
	numbers.each do |number|
		if number.even?
			new_numbers << number
		end
	end
	new_numbers
end

puts delete_even(numbers)
