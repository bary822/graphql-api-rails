class Owner < ApplicationRecord
  include GenderEnumerable

  enum gender: GENDER
end
