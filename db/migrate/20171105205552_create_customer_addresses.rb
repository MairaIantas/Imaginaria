class CreateCustomerAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :customer_addresses do |t|

      t.timestamps
    end
  end
end
