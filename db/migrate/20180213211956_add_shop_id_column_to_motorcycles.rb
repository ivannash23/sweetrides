class AddShopIdColumnToBikes < ActiveRecord::Migration[5.1]
  def change
    add_reference :bikes, :shop, foreign_key: true
  end
end
