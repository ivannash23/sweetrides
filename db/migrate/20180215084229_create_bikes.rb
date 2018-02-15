class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :model
      t.string :brand
      t.belongs_to :user

      t.timestamps
    end
  end
end
