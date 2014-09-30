class User < ActiveRecord::Base
  mount_uploader :profile_photo, ProfilePhotoUploader
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  validates :username, uniqueness: true
  validates :username, presence: true, length: { in: (6..32) }
  has_many :reviews
  has_many :votes
end
