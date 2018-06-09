class Types::QueryType < Types::BaseObject
  description 'Root level type for Query'

  field :owner, Types::OwnerType, 'A human who loves dogs', null: true, method: :find_owner do
    argument :owner_id, ID, 'ID of the owner', required: true
  end

  field :dog, Types::DogType, 'The most beloves animal in the world', null: true, method: :find_dog do
    argument :dog_id, ID, 'ID of the dog', required: true
  end

  def find_owner(owner_id:)
    Owner.find(owner_id)
  end

  def find_dog(dog_id:)
    Dog.find(dog_id)
  end
end
