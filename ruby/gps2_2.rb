# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create an empty hash
  # Iterate through the list that the user provides
  # Save each item that you iterate through to the hash
  # Set default quantity to 1 and assign that to each that you iterate through
  # print the list to the console [final method listed]
# output: [hash]
# { |thing_to_print| puts thing_to_print }


# Refactored line 16! 
def create_list (items)
	grocery_list = {}
	items.split(" ").each { |item| grocery_list[item] = 1}
	puts grocery_list
	return grocery_list
end

# my_list = create_list("carrots apples cereal pizza")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add new items into list
# output: updated list

def add_item (grocery_list, item, quantity)
	grocery_list[item] = quantity
	return grocery_list
end

# my_updated_list = add_item(my_list, "water", 2)
# puts my_updated_list

# Method to remove an item from the list
# input: item name, list
# steps: remove items from list
# output: updated list

def remove_item (my_updated_list, item)
	my_updated_list.delete(item)
	return my_updated_list
end

# my_updated_list = remove_item(my_updated_list, "pizza")
# puts my_updated_list


# Method to update the quantity of an item
# input: item name, list, quantity
# steps: update the quantity
# output: updated list

def update_quantity (grocery_list, item, quantity)
	grocery_list[item] = quantity
	return grocery_list
end

# my_updated_list = update_quantity(my_updated_list, "apples", 3)
# puts my_updated_list


# Method to print a list and make it look pretty
# input: grocery_list
# steps: iterate throught grocery_list and print each item name and quantity. Add tittle that says "My Grocery List" and name
# output: Pretty list
# { |thing_to_print| puts thing_to_print }


# Refactored line 26!
def print_list (grocery_list)
	puts "My Grocery List"
	puts "Item              Quantity"
	grocery_list.each {|item, quantity| puts "#{item}              #{quantity}"} 
end
#
# print_list(my_updated_list)



# D R I V E R   C O D E 

new_list = create_list("")
add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)
print new_list

remove_item(new_list, "Lemonade")
print new_list

update_quantity(new_list, "Ice Cream", 1)
print new_list

print_list(new_list)

















