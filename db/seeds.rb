# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies_data = [
  {
    name: 'Black Panther',
    year: '2018',
    genre: 'Fiction',
    actors: [
      {name: 'Chadwick Boseman', date_of_birth: '29-11-1977', gender: 'male'},
    ]
  },
  {
    name: 'Enter the Dragon',
    year: '1973',
    genre: 'Action',
    actors: [
      {name: 'Bruce Lee', date_of_birth: '27-11-1940', gender: 'male'},
    ]
  },
  {
    name: 'Wonder Woman',
    year: '2017',
    genre: 'Fiction',
    actors: [
      {name: 'Gal Gadot', date_of_birth: '30-04-1985', gender: 'female'},
      {name: 'Chris Pine', date_of_birth: '26-08-1980', gender: 'male'}
    ]
  }
]

movies_data.each do |movie_hash|
  movie = Movie.create!( movie_hash.slice(:name, :year, :genre) )

  actors_data = movie_hash[:actors]

  actors_data.each do |actor_data|
    actor = Actor.create!(actor_data)
    movie.actors << actor
  end
end
