class Resolvers::CreateMovie < GraphQL::Function
  # arguments passed as "args"
  argument :name,   !types.String
  argument :year,   types.String
  argument :genre,  types.String

  # return type from the mutation
  type Types::MovieType

  # the mutation method
  def call(_obj, args, _ctx)
    movie_params  = { name: args[:name], year: args[:year], genre: args[:genre] }
    Movie.create!(movie_params)
  end
end
