class Comment < ActiveRecord::Base
  validates :text, presence: true, length: { in: (20..320) }
  validates :review, presence: true
  validates :user, presence: true

  belongs_to :review
  belongs_to :user
end
