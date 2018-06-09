class Types::DogType < Types::BaseObject
  field :name, String, 'Name of the dog', null: false
  field :birthdate, String, 'When the dog was born', null: false
  field :gender, String, 'Male, Female or Others', null: false
  field :color, String, 'Color of the hair', null: false
  field :weight, Float, 'How much heavy the dog is', null: false
  field :description, String, 'Characteristic, likes, and whatever describes the dog', null: false
  field :favorite_toys, [Types::ToyType], 'Dog can treat everything as toy though, especially these things', null: true
end
