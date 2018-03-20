class Dog < ApplicationRecord
  include GenderEnumerable, ColorEnumerable

  belongs_to :owner

  enum gender: GENDER
  enum color: COLOR
end
