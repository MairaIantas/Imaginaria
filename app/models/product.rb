class Product < ApplicationRecord
  belongs_to :category
  validates :name, :description, :price, :qty, presence: true
  mount_uploader :image, AvatarUploader

  def self.search(term, page)
    if term
      where('name LIKE ? ', "%#{term}").paginate(page: page, per_page: 2).order('id DESC')
    else
      paginate(page: page, per_page: 3).order('id DESC')
    end
  end
end
