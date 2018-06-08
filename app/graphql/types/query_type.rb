Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :owner do
    type Types::OwnerType
    description "A human who loves dogs"
    argument :owner_id, types.Int
    resolve ->(obj, args, ctx) {
      Owner.find(args[:owner_id])
    }
  end
end
