module Admin
  class ShowsController < ApplicationController
    def index
      @shows = Show.all
    end

    def destroy
      @show = Show.find(params[:id])
      if @show.destroy
        flash[:notice] = "Show has been successfully deleted"
        redirect_to shows_path
      else
        flash[:notice] = "Show has been deleted successfully"
        redirect_to shows_path
      end
    end

    def show
      @show = Show.find(params[:id])
      @review = Review.new
    end


  end
end
