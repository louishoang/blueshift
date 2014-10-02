class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end
end
