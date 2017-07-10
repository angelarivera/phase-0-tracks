# require gems
require 'sqlite3'
require 'faker'

# create Pitchfork database
$DATABASE = SQLite3::Database.new("pitchfork.db")

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
