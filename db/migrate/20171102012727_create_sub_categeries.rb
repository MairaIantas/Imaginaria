class CreateSubCategeries < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_categeries do |t|
      t.int :category_id
      t.string :name
      t.string :description
      t.string :tag

      t.timestamps
    end
  end
end
