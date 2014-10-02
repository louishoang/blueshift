class Vote < ActiveRecord::Base
  belongs_to :review
  belongs_to :user

  def update_review
    review.vote_score += score
    review.save
  end
end
