class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.boolean :is_billing_address
      t.string :number
      t.string :zipcode
      t.string :other

      t.timestamps
    end
  end
end
