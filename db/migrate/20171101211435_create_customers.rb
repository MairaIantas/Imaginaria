class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :phone_number
      t.string :email
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end