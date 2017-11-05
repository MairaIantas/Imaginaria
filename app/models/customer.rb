class Customer < ApplicationRecord
  has_and_belong_to_many : addresses
end
