class RemoveCommentIndices < ActiveRecord::Migration
  def up
    remove_index :comments, [:review_id, :user_id]
  end

  def down
    add_index :comments, [:review_id, :user_id], unique: true
  end
end
