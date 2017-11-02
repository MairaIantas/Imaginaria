class Category < ApplicationRecord
  belongs_to :product
  validates :name, :description, presence: true
end
