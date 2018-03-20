class Dog < ApplicationRecord
  include GenderEnumerable, ColorEnumerable

  belongs_to :owner
  has_many :favorite_toys, class_name: 'Toy'

  enum gender: GENDER
  enum color: COLOR
end
