class AddStatusDefaultToOrders < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :status, foreign_key: true , :default => 1
  end
end
