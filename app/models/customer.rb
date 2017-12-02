class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders

  # has_many :customer_addresses
  # has_many :address, through: :customer_addresses
  # accepts_nested_attributes_for :address

end
