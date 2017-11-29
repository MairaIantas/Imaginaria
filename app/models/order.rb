class Order < ApplicationRecord
  has_many :items
  before_save :set_subtotal
  belongs_to :customer

  def subtotal
    items.collect { |item| item.valid? ? (item.price * item.qnty) : 0 }.sum
  end

  private
    def set_subtotal
      self[:subtotal] = subtotal
    end
end
