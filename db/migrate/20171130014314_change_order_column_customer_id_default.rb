class ChangeOrderColumnCustomerIdDefault < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :customer_id, :integer, :default => 1
  end
end
