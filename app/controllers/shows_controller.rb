class ShowsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
    @review = Review.new
  end

end
