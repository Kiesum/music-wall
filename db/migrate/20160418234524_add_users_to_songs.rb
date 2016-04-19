class AddUsersToSongs < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.references :user
      t.integer :upvote_counter
    end
  end
end
