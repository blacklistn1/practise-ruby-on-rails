class User < ApplicationRecord
  has_one :cart
  has_many :orders

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
