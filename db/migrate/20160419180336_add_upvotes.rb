class AddUpvotes < ActiveRecord::Migration

  def change
    create_table :upvotes do |t|
      t.references :song
      t.references :user
      t.boolean :upvote
    end
  end
end
