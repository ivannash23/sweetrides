class DropSellers < ActiveRecord::Migration[5.1]
  def up
    drop_table :sellers
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
