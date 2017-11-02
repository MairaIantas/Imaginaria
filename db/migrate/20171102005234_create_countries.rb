class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.integer :state_id
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
