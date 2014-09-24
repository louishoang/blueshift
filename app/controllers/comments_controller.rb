class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @review = Review.find(params[:review_id])
    @show = Show.find(@review.show_id)
    @comment = Comment.new

  end

  def create
    @comment = Comment.new(comment_params)
    @comment.review_id = params[:review_id]
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice]= "Comment created successfully"
      redirect_to show_path(params[:show_id])
    else
      flash[:notice]= "You didn't enter enough information."
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
