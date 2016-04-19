class Upvote < ActiveRecord::Base

  belongs_to :song
  belongs_to :user

  # validate :has_user_not_voted?

  # def has_user_not_voted?
  #   Upvote.where(song_id: song_id).where(user_id: session[:id]).nil?
  # end

end