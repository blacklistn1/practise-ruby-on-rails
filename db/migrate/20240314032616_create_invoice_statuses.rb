class CreateInvoiceStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :invoice_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
