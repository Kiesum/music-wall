class AddReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :song
      t.string :review
      t.integer :rating
    end
  end
end
