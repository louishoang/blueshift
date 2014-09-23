class RemoveItems < ActiveRecord::Migration
  def up
    drop_table :items
  end

  def down
    create_table :items do |t|
      t.string :title, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
