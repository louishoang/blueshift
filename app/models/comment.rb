class Comment < ActiveRecord::Base
  validates :text, presence: true, length: { in: (20..320) }
  validates :user, presence: true
  validates :review, presence: true
  belongs_to :review
  belongs_to :user
  def owner?(current_user)
    user == current_user
  end
end
