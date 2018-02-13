class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.decimal :price
      t.string :model
      t.string :brand
      t.integer :milage

      t.timestamps
    end
  end
end
