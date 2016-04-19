class Upvote < ActiveRecord::Base

  belongs_to :song
  belongs_to :user

  after_save :upvoting

  def upvoting
    song.upvote_counter = 0
    song.upvote_counter += 1
  end

end