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


# add lots of items
def add_item(item_name, quantity)
	$DATABASE.execute("INSERT INTO items (item_name, quantity) VALUES (?, ?)", [item_name, quantity])
end

10.times do
	add_item(Faker::Food.ingredient, 1)
end

# retrive data with ORM
# items = $DATABASE.execute("SELECT * FROM items")
# items.each do |item|
# 	puts "#{item['item_name']} is #{item['quantity']}"
# end 




