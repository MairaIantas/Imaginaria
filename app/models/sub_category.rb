class SubCategory < ApplicationRecord
  has_one :Category
  validates :name, :description, presence: true
end
