class WelcomeController < ApplicationController
  def index
    @show_images = ActiveRecord::Base.connection.execute("SELECT poster FROM shows WHERE poster NOT LIKE '%poster-dark%' ORDER BY random()  LIMIT 20;").to_a
  end
end
