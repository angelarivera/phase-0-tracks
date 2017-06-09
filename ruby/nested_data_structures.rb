# Release Two: Design and Build Nested Data

# Create closet hash and nested arrays of clothing
closet = {
	"Dresses" => [
		"wedding dress", 
		"cocktail dress"
	],
	"Shirts" => [
		"turtleneck",
		"longsleeve",
		"crew neck"
	],
	"Jackets" => [
		"trenchcoat",
		"bomber jacket",
		"peacoat"
	],
	"Shoes" => {
		"Active Shoes" => [
			"sneakers"
		],

		"Dress Shoes" => [
			"flats",
			"high heels",
			"boots"
		]
	}
}


# access variables in nested array 
puts "This should print peacoat" 
puts closet["Jackets"][2]

# add variables to nested array 
puts "This should add sandals to Dress Shoes array"
closet["Shoes"]["Dress Shoes"].push("sandals")
puts closet["Shoes"]["Dress Shoes"][3]

# change variables to nested array
puts "This should change longsleeve to Button up"
# this should print initial string in array
puts closet["Shirts"][1]
closet["Shirts"][1] = "Button up"
# this should print replacement string in array
puts closet["Shirts"][1]
