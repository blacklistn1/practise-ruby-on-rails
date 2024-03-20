class Product < ApplicationRecord
  include Pagination
  has_many :order_items
  has_many :cart_items
  has_many :orders, through: :order_items
  has_many :carts, through: :cart_items

  scope :in_stock, -> { where('status = ? AND stock > ?', 1, 0) }
  scope :latest, -> { in_stock.order(updated_at: 'desc') }
  scope :latest_in_stock, -> { in_stock.order(updated_at: 'desc').limit(10) }

end
