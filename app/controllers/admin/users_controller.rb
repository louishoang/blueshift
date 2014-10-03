module Admin

  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "User has been successfully deleted"
      redirect_to admin_users_path
    end

    def show
      @user = User.find(params[:id])
    end
  end
end
