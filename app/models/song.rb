class Song < ActiveRecord::Base

  belongs_to :user

  validates :song_title, presence: true, length: { maximum: 30 }
  validates :author, presence: true, length: { maximum: 30 }

end