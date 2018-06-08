Types::OwnerType = GraphQL::ObjectType.define do
  name "Owner"
  field :name, types.String, 'Name of the Owner'
  field :birthdate, types.String, 'When the owner was born'
  field :gender, types.String, 'Male, Female or Others'
end
