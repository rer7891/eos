class CreateVeterinarians < ActiveRecord::Migration[6.0]
  def change
    create_table :veterinarians do |t|
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
