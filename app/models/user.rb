class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :bikes
  has_many :parts

  has_attached_file :avatar, styles: {
  thumb: '100x100>',
  square: '200x200#',
  medium: '300x300>'
  },
  s3_region: ENV["aws_region"]

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def active_for_authentication?
      super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super
    end
  end

  after_create :send_admin_mail
  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval(email).deliver
  end
end
