class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :street
      t.string :number
      t.string :zipcode
      t.string :other

      t.timestamps
    end
  end
end
