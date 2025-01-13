class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
end

# - A bookmark belongs to a recipe
# - A bookmark belongs to a category
