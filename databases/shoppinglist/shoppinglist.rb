# SHOPPING LIST 

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database, store in a global variable
$DATABASE = SQLite3::Database.new("shoppinglist.db")
$DATABASE.results_as_hash = true

# string delimiters 
# create items table command
create_table_cmd = <<-SQL 
	CREATE TABLE IF NOT EXISTS items(
		id INTEGER PRIMARY KEY,
		item_name VARCHAR(255),
		quantity INT
		)
SQL

# run the string by calling it with execute
$DATABASE.execute(create_table_cmd)

# add test item (add apples to item database)
# $DATABASE.execute("INSERT INTO items (item_name, quantity) VALUES ('Apples', 6)")


# add items
def add_item(item_name, quantity)
	$DATABASE.execute("INSERT INTO items (item_name, quantity) VALUES (?, ?)", [item_name, quantity])
end

# update item quantity
def update_item (item_name, changedquantity) 
	$DATABASE.execute("UPDATE items SET quantity=(?) WHERE item_name=(?)", [changedquantity, item_name])
end

# delete items
def remove_item(item)
	$DATABASE.execute("DELETE FROM items WHERE item_name=(?)", [item])
end	

# print items retrive data with ORM
def print_items 
	items = $DATABASE.execute("SELECT * FROM items")
	items.each do |item|
		puts "#{item['item_name']} is #{item['quantity']}"
	end 
end

# Questions:
# 1) Do I need a create list method?
# 2) Will I be creating instances of the list?
# 3) Does my program need to handle more than one user?
# 4) Am I missing three other methods?
	# 1) print item
	# 2) print by id
	# 3) update item




# ---------------------------- D R I V E R  C O D E ------------------------------------------ 

# repeat "x" times
10.times do
	add_item(Faker::Food.ingredient, 1)
end

while 
	puts "Hello, welcome to your shopping list. What items do you want to enter? Type 'done' to exit program."
	item_name = gets.chomp
	quantity = gets.chomp

	add_item(item_name, quantity)

	break if item_name == "done"

	print_items

end 



