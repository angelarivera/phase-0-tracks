# require gem
require 'sqlite3'

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
# add second friend concert goer (once)
# $DATABASE.execute("INSERT INTO user (name, performer_id) VALUES ('Nolan', 13)")
# add third friend concert goer (once)
# $DATABASE.execute("INSERT INTO user (name, performer_id) VALUES ('Lauren', 1)")


# add friend method
def add_friend(name, performer_id)
	$DATABASE.execute("INSERT INTO user(name, performer_id) VALUES (?, ?)", [name, performer_id])
end 

def delete_friend(name)
	$DATABASE.execute("DELETE FROM user WHERE name=(?)", [name])
end 

def update_friend(performer_id, name)
	$DATABASE.execute("UPDATE user SET performer_id=(?) WHERE name=(?)", [performer_id, name])
end

# retrive data with ORM
def find_attendees (performers_id)
	if performers_id == "LCD Soundsystem"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 13")
	puts "Head to the Green Stage at 8:10 pm and watch LCD Soundsystem with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end 

	elsif performers_id == "Madame Gandhi"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 1")
	puts "Head to the Red Stage at 1:00 pm and watch Madame Gandhi with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Priests"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 2")
	puts "Head to the Green Stage at 1:45 pm and watch Priests with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Dawn Richard"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 3")
	puts "Head to the Blue Stage at 2:30 pm and watch Dawn Richard with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Hiss Golden Messenger"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 4")
	puts "Head to the Red Stage at 3:00 pm and watch Hiss Golden Messenger with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Vince Staples"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 5")
	puts "Head to the Green Stage at 4:00 pm and watch Vince Staples with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "William Tyler"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 6")
	puts "Head to the Blue Stage at 4:00 pm and watch William Tyler with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Thurston Moore"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 7")
	puts "Head to the Red Stage at 5:00 pm and watch Thurston Moore Group with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Frankie Cosmos"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 8")
	puts "Head to the Blue Stage at 5:15 pm and watch Frankie Cosmos with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Danny Brown"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 9")
	puts "Head to the Green Stage at 6:00 pm and watch Danny Brown with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Kamaiyah"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 10")
	puts "Head to the Blue Stage at 6:30 pm and watch Kamaiyah with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Dirty Projectors"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 11")
	puts "Head to the Red Stage at 7:00 pm and watch Dirty Projectors with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end

	elsif performers_id == "Arca & Jesse Kanda"
	users = $DATABASE.execute("SELECT user.name, performer.band_name FROM user JOIN performer ON user.performer_id = performer.performers_id WHERE performers_id = 12")
	puts "Head to the Blue Stage at 7:45 pm and watch Arca & Jesse Kanda with the following friends:"
	users.each do |user|
		puts "#{user['name']}"
	end
	
	else 
		puts "We couldn't process your request, please retry"
	end
end 


# D   R   I   V   E   R   C   O   D   E 

puts "Pitchfork Music Festival 2017: Friend Locator"
puts 
puts "Find friends, concert times, and stage locations for Pitchfork's 12th Annual Music Festival in Chicago's Union Park"
puts 

while
loop do 
	puts "Add friends to your Friend Locator list. Type 'done' to begin locating friends."
	puts
	puts "What is your friends name?"

	name = gets.chomp

	break if name == 'done'
	
	puts "Below is the setlist, select the number for the performer your friend will be attending:"
	puts 
	puts "Madame Gandhi : 1"
	puts "Priests : 2"
	puts "Dawn Richard : 3"
	puts "Hiss Golden Messenger : 4"
	puts "Vince Staples : 5"
	puts "William Tyler : 6"
	puts "Thurston Moore Group : 7"
	puts "Frankie Cosmos : 8"
	puts "Danny Brown : 9"
	puts "Kamaiyah : 10"
	puts "Dirty Projectors : 11"
	puts "Arca & Jesse Kanda : 12"
	puts "LCD Soundsystem : 13"

	performers_id = gets.chomp.to_i

	add_friend(name, performers_id)
end


loop do 
	puts "Search a performer to discover friends attending. Type 'done' when finished."

	performers_id = gets.chomp

	break if performers_id == 'done'

	find_attendees(performers_id)
end 

loop do 
	puts "Do you want to update any friends location? Type in their name or type 'done' when finished"
	puts 
	puts "What is your friends name?"
	
	name = gets.chomp

	break if name == 'done'

	puts "Below is the setlist, select the number for the performer your friend will now be attending:"
	puts 
	puts "Madame Gandhi : 1"
	puts "Priests : 2"
	puts "Dawn Richard : 3"
	puts "Hiss Golden Messenger : 4"
	puts "Vince Staples : 5"
	puts "William Tyler : 6"
	puts "Thurston Moore Group : 7"
	puts "Frankie Cosmos : 8"
	puts "Danny Brown : 9"
	puts "Kamaiyah : 10"
	puts "Dirty Projectors : 11"
	puts "Arca & Jesse Kanda : 12"
	puts "LCD Soundsystem : 13"

	performer_id = gets.chomp.to_i

	update_friend(performer_id, name)
end 

loop do
	puts "Do you want to delete any friends from Friend Locator? Type 'done' when finished"
	name = gets.chomp

	break if name == 'done'

	delete_friend(name)
end 

