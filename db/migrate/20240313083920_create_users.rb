class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, limit: 100, index: { unique: true }
      t.string :password, limit: 80
      t.string :username, limit: 50
      t.string :name, limit: 150, default: nil
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
