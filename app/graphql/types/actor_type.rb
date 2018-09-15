Types::ActorType = GraphQL::ObjectType.define do
  name 'Actor'
  description 'Actor Details'

  field :id,            !types.ID
  field :name,          !types.String
  field :gender,        types.String
  field :date_of_birth, types.String
end
