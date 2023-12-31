class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :cost
      t.text :description
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
    add_index :dishes, :name, unique: true
  end
end
