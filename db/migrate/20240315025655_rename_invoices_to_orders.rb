class RenameInvoicesToOrders < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      direction.up do
        rename_table 'invoices', 'orders'
        rename_table 'invoice_statuses', 'order_statuses'
        rename_table 'invoice_items', 'order_items'
      end
      direction.down do
        rename_table 'orders', 'invoices'
        rename_table 'order_statuses', 'invoice_statuses'
        rename_table 'order_items', 'invoice_items'
      end
    end
  end
end
