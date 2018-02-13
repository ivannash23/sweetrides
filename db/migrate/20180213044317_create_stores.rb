class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :location
      t.integer :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end