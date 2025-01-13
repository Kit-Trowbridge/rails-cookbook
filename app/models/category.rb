class Category < ApplicationRecord
  # - A category has many bookmarks
  # When you delete a category, you should delete all associated bookmarks (but not the recipes as they can be referenced in other categories).
  has_many :bookmarks, dependent: :destroy
  # - A category has many recipes through bookmarks
  has_many :recipes, through: :bookmarks

  validates :name, presence: true
end
