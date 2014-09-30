class AddPoster < ActiveRecord::Migration
  def up
    add_column :shows, :poster, :string
  end

  def down
    remove_column :shows, :poster
  end
end
