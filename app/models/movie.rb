class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  validates :title, presence:true
  validates :overview, presence: true
  validates :post_url, presence: true
  validates :rating, presence: true, numericality: true
end
