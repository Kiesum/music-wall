class AddUpvotes < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.remove :upvotes 
    end
  end

  def change
    create_table :upvotes do |t|
      t.references :song
      t.references :user
      t.boolean :upvote
    end
  end
end
