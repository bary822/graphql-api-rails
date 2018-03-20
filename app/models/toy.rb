class Toy < ApplicationRecord
  include ToyCategoryEnumerable

  enum category: TOYCATEGORY
end
