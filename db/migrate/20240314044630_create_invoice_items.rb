class CreateInvoiceItems < ActiveRecord::Migration[7.1]
  def change
    create_table :invoice_items, primary_key: [:invoice_id, :product_id] do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
