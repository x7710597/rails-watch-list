class List < ApplicationRecord
  has_many :movies, through: :bookmarks
  has_many :bookmarks
  validates :name, presence: true, uniqueness: true
end
