class Movie < ApplicationRecord
  has_many :favourites
  has_many :users, through: :favourites

  validates :title, presence: true
  validates :runtime, numericality: true, presence: true
end
