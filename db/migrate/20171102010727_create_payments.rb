class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :payment_method_id
      t.string :credit_card_number
      t.string :card_holder_name
      t.datetime :expiration
      t.integer :security_code
      t.decimal :amount
      t.datetime :date

      t.timestamps
    end
  end
end
