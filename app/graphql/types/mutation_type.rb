Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :create_movie,
        description: "Create new movie",
        function: Resolvers::CreateMovie.new
end
