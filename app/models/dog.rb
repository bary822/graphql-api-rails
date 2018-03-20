class Dog < ApplicationRecord
  include GenderEnumerable, ColorEnumerable

  enum gender: GENDER
  enum color: COLOR
end
