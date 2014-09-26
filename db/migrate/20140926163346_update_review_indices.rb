class UpdateReviewIndices < ActiveRecord::Migration
  def up
    remove_index :reviews, [:show_id, :user_id]
  end

  def down
    add_index :reviews, [:show_id, :user_id]
  end
end
