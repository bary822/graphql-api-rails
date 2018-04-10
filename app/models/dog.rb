class Dog < ApplicationRecord
  include GenderEnumerable, ColorEnumerable

  belongs_to :owner
  has_many :favorite_toys, class_name: 'Toy'
  has_many :friend_ships
  has_many :friends, through: :friend_ships, source: :friend

  enum gender: GENDER
  enum color: COLOR
end
