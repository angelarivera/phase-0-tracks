# # Define a method 
# def say_hello
# 	name1 = "Steve"
# 	name2 = "Tiahna"
# 	puts "Why hello there!"
# 	yield(name1, name2)
# end

# # Say "Great to see you" to someone in particular. Method to populate block parameters. 
# say_hello { |name1, name2| puts "Great to see you, #{name1} and #{name2}!}" } 

# Notes 
# 1) blocks & methods: Methods can take a block. Block will not run without yield keyword. 
# 2) yield: Anywhere you have the yield keyword, your block will run. Yield evaluates the block code.
# 3) block parameter Value defaults to 0 when it is not set. (S8) 5pm silicon valley bank
# 4) .each is best for looping through and printing or looping through and adding a number to a sum (array of numbers and them to sum sum), NOT best for modifying an array. 
# 5) .map is best for modifying an array or hash

# RELEASE 0: Define a method that takes a block
# def goodnight_greeting
# 	name1 = "Glenna"
# 	name2 = "Kit"
# 	puts "Have a good night,"
# 	yield(name1, name2)
# end
# # Say "Great to see you" to someone in particular. Method to populate block parameters. 
# goodnight_greeting { |name1, name2| puts "#{name1} and #{name2}!" }


# RELEASE 1: .each (Method available on Arrays and Hashes that lets your iterate through those Data Structures and do something with each item, or key value pair in the data structures)

# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters
# p new_letters

# # iterate through the array with .each. Modify values in an array with .each
# letters.each do |letter|
# 	new_letters << letter.next
# end

# puts "After .each call:"
# p letters
# p new_letters

# ###############

# numbers = {
# 	1 => 'one',
# 	2 => 'two',
# 	3 => 'three'
# }

# # iterate through the hash with .each

# numbers.each do |digit, word|
# 	puts "#{digit} is spelled out as #{word}"
# end



# .MAP
letters = ["a", "b", "c", "d", "e"]
puts "Original data:"
p letters


# iterate through the array with .map (letter is each item in the array. The difference is that map will change the item to whatever the last line of the block you've given map evaluates to. Map doesn't require reassignment?)
letters.map! do |letter|
	puts letter
	letter.next #this last expression is what array is replaced with. 
end

puts "After .map call:"
p letters



# if you didn't want to modify the array, but store the array in a new array, then you use map. 




chicago_neighborhooods = ['Logan Square', 'Pilsen', 'Wicker Park']

neighborhood_needs = {
	safety level => 12,
	nightlife level => 10
}





















