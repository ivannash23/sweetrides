class Part < ApplicationRecord
	belongs_to :user, optional: true

	end
