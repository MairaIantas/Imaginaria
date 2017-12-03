class Order < ApplicationRecord
  has_many :items
  before_save :set_subtotal, :set_gst, :set_pst, :set_hst, :set_total
  belongs_to :customer
  belongs_to :status

  def subtotal
    items.collect { |item| item.valid? ? (item.price * item.qnty) : 0 }.sum
  end

  def pst
    (subtotal * customer.province.pst) / 100
  end

  def gst
    (subtotal * customer.province.gst) / 100
  end

  def hst
    (subtotal * customer.province.hst) / 100
  end

  def total
    subtotal + pst + gst + hst
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end

  def set_gst
    self[:gst] = pst
  end

  def set_pst
    self[:pst] = pst
  end

  def set_hst
    self[:hst] = hst
  end

  def set_total
    self[:total] = total
  end
end
