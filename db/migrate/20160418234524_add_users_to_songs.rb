class AddUsersToSongs < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.references :user
      t.integer :upvotes
    end
  end
end
