class VotesController < ApplicationController
  def upvote
    review_id = params["id"]
    @review = Review.find(review_id)
    @review.score += 1
    @review.save
    redirect_to show_path(params["show_id"])
  end

  def downvote
    review_id = params["id"]
    @review = Review.find(review_id)
    @review.score -= 1
    @review.save
    redirect_to show_path(params["show_id"])
  end
end
