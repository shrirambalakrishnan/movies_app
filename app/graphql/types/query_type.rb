Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :first_movie do
    type        Types::MovieType
    description "Return the first movie"
    resolve ->(obj, args, ctx) { Movie.first }
  end

  field :movies do
    type        types[Types::MovieType]
    description "Return the first movie"
    resolve ->(obj, args, ctx) { Movie.all }
  end
end
