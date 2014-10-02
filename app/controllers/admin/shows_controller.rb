module Admin
  class ShowsController < ApplicationController

    def index
      if params[:search]
        @shows = Show.search(params[:search]).order("name")
      else
        @shows = Show.order("name")
      end
    end

    def destroy
      @show = Show.find(params[:id])
      if @show.destroy
        flash[:notice] = "Show has been successfully deleted"
        redirect_to shows_path
      end
    end

    def show
      @show = Show.find(params[:id])
      @review = Review.new
    end
  end
end
