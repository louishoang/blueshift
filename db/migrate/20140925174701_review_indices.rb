class ReviewIndices < ActiveRecord::Migration
  def up
    add_index :reviews, [:show_id, :user_id], unique: true
  end

  def down
    remove_index :reviews, [:show_id, :user_id]
  end
end
