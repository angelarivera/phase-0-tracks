# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
$DATABASE = SQLite3::Database.new("pitchfork.db")
