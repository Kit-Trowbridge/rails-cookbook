class Category < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks
end

# - A category has many bookmarks
# - A category has many recipes through bookmarks

# When you delete a category, you should delete all associated bookmarks (but not the recipes as they can be referenced in other categories).
