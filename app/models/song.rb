class Song < ActiveRecord::Base

  belongs_to :user
  has_many :upvotes

  validates :song_title, presence: true, length: { maximum: 30 }
  validates :author, presence: true, length: { maximum: 30 }

  def initalize
    @upvote_counter = 0
  end

end