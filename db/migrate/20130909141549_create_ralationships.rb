class CreateRalationships < ActiveRecord::Migration
  def change
    create_table :ralationships do |t|
      t.integer :follower_id
      t.integer :followed_id
      t.timestamps
    end
	add_index :relationships, :follower_id
    add_index :relationships, :followed_id
    add_index :relationships, [:follower_id, :followed_id], unique: true
  end
end
