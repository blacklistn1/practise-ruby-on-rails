class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.float :price
      t.integer :status
      t.text :description, default: nil

      t.timestamps
    end
  end
end
