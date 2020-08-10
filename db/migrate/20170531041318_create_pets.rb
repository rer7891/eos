class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :chip
      t.integer :owner_id
      t.integer :animal

      t.timestamps null: false
    end
    add_index :pets, :owner_id
  end
end
