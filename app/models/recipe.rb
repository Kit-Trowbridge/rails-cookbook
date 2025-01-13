class Recipe < ApplicationRecord
  # A recipe has many bookmarks, and many categories
  has_many :bookmarks

  # - A recipe must have a description and a unique name.
  validates :decription, presence: true
  validates :name, presence: true, uniqueness: true
  # - The rating of a recipe must be a value between 0 and 10.
  validates :rating, numericality: { in: 0..10 }
end
