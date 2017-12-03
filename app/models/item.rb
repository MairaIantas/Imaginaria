class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_save :set_unit_price

  def price
    if persisted?
      self[:price]
    else
      product.price
    end
  end

  private

  def set_unit_price
    self[:price] = price
  end
end
