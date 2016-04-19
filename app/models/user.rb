class User < ActiveRecord::Base

  has_many :songs

  validates :username, presence: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 6 }

end