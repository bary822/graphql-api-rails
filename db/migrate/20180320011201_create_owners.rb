class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.date :birthdate
      t.integer :gender

      t.timestamps
    end
  end
end
