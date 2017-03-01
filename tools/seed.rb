require_relative '../config/environment.rb'

[MovieGenre, Movie, Genre, Review].each do |model|
  model.create_table
  model.drop_table
  model.create_table
end

movies = (1..10).to_a.map do |num|
  movies = Movie.new(title: Faker::Book.title,
        release_year: rand(1920..1990)
        )
end

movies.each do |movie|
  movie.save
end

genres = ["Drama", "Science Fiction", "Horror", "Fantasy", "Romance", "Comedy"].map do |name|
  genre = Genre.new(name: name)
end

genres.each do |genre|
  genre.save
end

Movie.all.map do |movie|
  genres = Genre.all
  (1..3).to_a.sample.times do
    genre = genres.delete( genres.sample )
    mg = MovieGenre.new(movie_id: movie.id, genre_id: genre.id)
    mg.save
  end
end


reviews = Movie.all.map do |movie|
  Review.new(content: Faker::Lorem.paragraph, movie_id: movie.id)
end

reviews.each {|r| r.save }
