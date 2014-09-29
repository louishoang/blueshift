class ShowsController < ApplicationController
  before_filter :authenticate_user!

  def index
    if params[:search]
      @shows = Show.search(params[:search]).order("name").page(params[:page])
    else
      @shows = Show.order("name").page(params[:page])
    end
  end

  def show
    @show = Show.find(params[:id])
    @review = Review.new
    @comment = Comment.new
  end
end
