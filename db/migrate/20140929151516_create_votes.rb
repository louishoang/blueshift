class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :review_id
      t.integer :score
      t.integer :user_id

      t.timestamps
    end
  end
end
