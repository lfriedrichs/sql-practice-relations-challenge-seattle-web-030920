class MovieGenre
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    movie_id: "INTEGER",
    genre_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def movie
  end

  def genre
  end
end
