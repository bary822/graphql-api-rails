class Types::ToyType < GraphQL::Schema::Object
  field :name, String, 'Name of the Toy', null: false
  field :category, String, 'Category by the way human plays with dog', null: false
end
