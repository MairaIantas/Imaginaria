class Category < ApplicationRecord
  has_many :product
  validates :name, :description, presence: true
end
