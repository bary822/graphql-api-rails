class CreateFriendShips < ActiveRecord::Migration[5.2]
  def change
    create_table :friend_ships do |t|
      t.integer :dog_id
      t.integer :friend_id

      t.timestamps
    end
  end
end
