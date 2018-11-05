Types::MovieType = GraphQL::ObjectType.define do
  name 'Movie'
  description 'Movie Details'

  field :id,    !types.ID
  field :name,  !types.String
  field :genre, types.String
  field :year,  types.String

  field :actors do
    type types[Types::ActorType]
    description "Actor"

    resolve ->(obj, args, ctx) {
      # obj is the "movie" object
      obj.actors
    }
  end
end
