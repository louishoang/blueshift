module Admin
  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def destroy
      @user = User.find(params[:id])
      if @user.destroy
        flash[:notice] = "User has been successfully deleted"
        redirect_to admin_users_path
      else
        flash[:notice] = "User has been deleted successfully"
        redirect_to admin_users_path
      end
    end
  end
end
