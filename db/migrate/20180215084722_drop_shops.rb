class DropShops < ActiveRecord::Migration[5.1]
  def change
  	def up
  	  drop_table :shops
  	end

  	def down
  	  fail ActiveRecord::IrreversibleMigration
  	end
  end
end
