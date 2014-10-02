class AddIndicesToForeignKeys < ActiveRecord::Migration
  def change
    add_index :comments, :user_id
    add_index :comments, :review_id
    add_index :reviews, :user_id
    add_index :reviews, :show_id
    add_index :shows, :genre_id
    add_index :votes, :user_id
    add_index :votes, :review_id
  end
end
