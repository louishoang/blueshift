class CommentsIndices < ActiveRecord::Migration
  def up
    add_index :comments, [:review_id, :user_id], unique: true
  end

  def down
    remove_index :comments, [:review_id, :user_id]
  end
end
