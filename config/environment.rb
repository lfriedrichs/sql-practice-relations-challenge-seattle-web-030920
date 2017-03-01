require 'bundler/setup'
Bundler.require
DB = {conn: SQLite3::Database.new("movies.db")}

require_all 'app'
