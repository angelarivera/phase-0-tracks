# require gems
require 'sqlite3'
require 'faker'

# create Pitchfork database
$DATABASE = SQLite3::Database.new("pitchfork.db")
$DATABASE.results_as_hash = true

# create user and performer table w/ string delimiters
create_user_table = <<-SQL
	CREATE TABLE IF NOT EXISTS user(
		users_id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		performer_id INT,
		FOREIGN KEY (performer_id) REFERENCES performer(performers_id) 
	)
SQL

create_performer_table = <<-SQL
	CREATE TABLE IF NOT EXISTS performer(
		performers_id INTEGER PRIMARY KEY, 
		band_name VARCHAR(255)
	)
SQL

# execute creation of tables
$DATABASE.execute(create_user_table)
$DATABASE.execute(create_performer_table)

# add first friend concert goer (once)
# $DATABASE.execute("INSERT INTO user (name, performer_id) VALUES ('Carmelita', 13)")

# add friend method
def add_friend 
	$DATABASE.execute("INSERT INTO user (name, performer_id) VALUES (?, ?)", [name, performer_id])
end 

# retrive data with ORM
users = $DATABASE.execute("SELECT * FROM user")
puts users.class
p users

