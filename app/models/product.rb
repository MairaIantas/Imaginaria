class Product < ApplicationRecord
  belongs_to :category
  validates :name, :description, :price, :qty, presence: true
  mount_uploader :image, AvatarUploader
  has_many :items

  def self.search(term, page, category_id)
    if term && category_id != ''
      where('(products.name LIKE ? or products.description LIKE ?) and categories.id = ? ', "%#{term}%", "%#{term}%", category_id).joins(:category).paginate(page: page, per_page: 2).order('name ASC')
    elsif term
      where('products.name LIKE ? or products.description LIKE ? ', "%#{term}%", "%#{term}%").paginate(page: page, per_page: 2).order('name ASC')
    else
      paginate(page: page, per_page: 3).order('name ASC')
    end
  end
end
