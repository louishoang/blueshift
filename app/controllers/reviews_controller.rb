class ReviewsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @review = Review.new
  end

  def create

    @review = Review.new(review_params)
    @review.show_id = params[:show_id]
    @review.user_id = current_user.id

    if @review.save
      flash[:notice]= "Review created successfully"
      redirect_to show_path(params[:show_id])
    else
      flash[:notice]= "You didn't enter enough information."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body)
  end

end
