class AddColumnsToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :description, :text
    add_column :bikes, :year, :integer
    add_column :bikes, :mileage, :integer
  end
end
