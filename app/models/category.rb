class Category < ApplicationRecord
  # - A category has many bookmarks
  # When you delete a category, you should delete all associated bookmarks (but not the recipes as they can be referenced in other categories).
  has_many :bookmarks, dependent: :destroy
  # - A category has many recipes through bookmarks
  has_many :recipes, through: :bookmarks

  # - A category must have a unique name.
  validates :name, presence: true, uniqueness: true
end
