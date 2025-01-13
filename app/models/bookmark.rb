class Bookmark < ApplicationRecord
  # - A bookmark belongs to a recipe
  belongs_to :recipe
  # - A bookmark belongs to a category
  belongs_to :category

  # - A category must have a unique name.
  validates :name, presence: true, uniqueness: true
  # - The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }, allow_blank: true

  # - A bookmark must be linked to a recipe and a category, and the [recipe, category] pairings should be unique.
  validates :recipe_id, uniqueness: { scope: :category_id, message: 'This recipe is already in this category' }
end

# - A user can create a new recipe to an existing category **by adding a new bookmark** (recipe/category pair) here ⇒ **'categories/42/bookmarks/new'**
# - A user can remove a recipe from a category **(actually, delete a bookmark!)**
# - On the **categories 'show'** page, display all the associated recipes.

# - Create a delete link for each recipe in the **categories 'show**' page like this:
#     - Beef Miso Ramen | Delete
