class Bike < ApplicationRecord
	belongs_to :user, optional: true

	has_many :pictures, :dependent => :destroy

	has_attached_file :avatar, styles: { medium: "300x300", thumb: "100x100" }, s3_region: ENV["aws_region"]

	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
