Types::MovieType = GraphQL::ObjectType.define do
  name 'Movie'
  description 'Movie Details'

  field :id,    !types.ID
  field :name,  !types.String
  field :genre, types.String
  field :year,  types.String
end
