class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.string :description
      t.integer :qty
      t.decimal :price

      t.timestamps
    end
  end
end
