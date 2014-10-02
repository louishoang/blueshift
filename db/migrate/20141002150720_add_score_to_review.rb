class AddScoreToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :vote_score, :integer, default: 0
  end
end
