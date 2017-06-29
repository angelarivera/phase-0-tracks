# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
# create a new database and store it in db variable.
$DATABASE = SQLite3::Database.new("shoppinglist.db")