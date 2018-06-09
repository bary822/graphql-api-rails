class Types::OwnerType < GraphQL::Schema::Object
  field :name, String, 'Name of the Owner', null: false
  field :birthdate, String, 'When the owner was born', null: false
  field :gender, String, 'Male, Female or Others', null: false
end
