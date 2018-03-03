class AddAvatarToBikes < ActiveRecord::Migration[5.1]
	def up
	    add_attachment :bikes, :avatar
	  end
	 
	  def down
	    remove_attachment :bikes, :avatar
	  end
end
