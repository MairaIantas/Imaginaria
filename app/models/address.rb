class Address < ApplicationRecord
  has_many :customer_addresses
  has_many :customer, through: :customer_addresses
end
