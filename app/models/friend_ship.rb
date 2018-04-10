class FriendShip < ApplicationRecord
  belongs_to :dog
  belongs_to :friend, class_name: 'Dog'
end
