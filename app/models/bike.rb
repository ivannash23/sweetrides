class Bike < ApplicationRecord
	belongs_to :user, optional: true
end
