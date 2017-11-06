class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :payment_id
      t.integer :status_id

      t.timestamps
    end
  end
end
