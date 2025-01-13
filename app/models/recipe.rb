class Recipe < ApplicationRecord
  has_many :bookmarks
end

# A recipe has many bookmarks, and many categories
