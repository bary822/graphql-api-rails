class Owner < ApplicationRecord
  include GenderEnumerable

  has_many :dogs

  enum gender: GENDER
end
