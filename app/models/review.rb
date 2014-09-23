class Review < ActiveRecord::Base
  has_many :votes
  has_many :comments

  belongs_to :user
  belongs_to :show

  validates :user_id,
    presence: true, uniqueness: true
  validates :show_id,
    presence: true
  validates :title,
    presence: true
  validates :body,
    presence: true
  validates :score,
  presence: true
end
