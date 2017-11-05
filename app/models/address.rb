class Address < ApplicationRecord
  has_and_belong_to_many : customers
end 
