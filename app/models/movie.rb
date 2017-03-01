class Movie
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    title: "TEXT",
    release_year: "INTEGER"
    }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def genres
  end


end
