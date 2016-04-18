class AddUsersToSongs < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.belongs_to :users
      t.integer :upvotes
    end
  end
end
