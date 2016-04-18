class Song < ActiveRecord::Base

  validates :song_title, presence: true, length: { maximum: 30 }
  validates :author, presence: true, length: { maximum: 30 }

end