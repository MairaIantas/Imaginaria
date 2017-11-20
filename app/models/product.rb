class Product < ApplicationRecord
  belongs_to :category
  validates :name, :description, :price, :qty, presence: true
  mount_uploader :image, AvatarUploader
end
