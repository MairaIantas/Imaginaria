class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product

  before_save :set_unit_price
  # before_save :set_total_price

  def price
    if persisted?
      self[:price]
    else
      product.price
    end
  end

  # def total_price
  #   price * qnty
  # end

  private
    def set_unit_price
      self[:price] = price
    end
    # def set_total_price
    #     self[:total_price] = qnty * set_unit_price
    # end
end
