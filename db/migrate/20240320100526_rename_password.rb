class RenamePassword < ActiveRecord::Migration[7.1]
  def change
    reversible do |dir|
      dir.up do
        rename_column :users, :password, :password_digest
      end
      dir.down do
        rename_column :users, :password_digest, :password
      end
    end
  end
end
