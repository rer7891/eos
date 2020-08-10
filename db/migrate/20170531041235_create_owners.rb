class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :phone
      t.integer :veterinarian_id

      t.timestamps null: false
    end
    add_index :owners, :veterinarian_id
  end
end
