class Vote < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  validates :user,
    uniqueness: true
end
