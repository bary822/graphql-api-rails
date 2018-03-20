class AddDogsToToy < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :dog_id, :integer
  end
end
