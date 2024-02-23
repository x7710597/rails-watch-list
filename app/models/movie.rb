class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks, dependent: :destroy

  validates :title, presence:true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
  validates :poster_url, presence: true
  validates :rating, presence: true, numericality: true
end


# You can’t delete a movie if it is referenced in at least one bookmark.
