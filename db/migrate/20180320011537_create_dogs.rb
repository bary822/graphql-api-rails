class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :birthdate
      t.integer :gender
      t.integer :color
      t.float :weight
      t.string :description

      t.timestamps
    end
  end
end
