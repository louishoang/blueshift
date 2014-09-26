class AddDefaultRoleToUsers < ActiveRecord::Migration
  def up
    change_column :users, :role, :string, null: false, default: "member"
  end

  def down
    change_column :users, :role, :string
  end
end
