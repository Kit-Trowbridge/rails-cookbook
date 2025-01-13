Rails.application.routes.draw do
  root to: 'categories#index'
  resources :categories, except: [:index, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
end

# - A user can create a new recipe to an existing category **by adding a new bookmark** (recipe/category pair) here ⇒ **'categories/42/bookmarks/new'**
# - A user can remove a recipe from a category **(actually, delete a bookmark!)**
# - On the **categories 'show'** page, display all the associated recipes.

# - Create a delete link for each recipe in the **categories 'show**' page like this:
#     - Beef Miso Ramen | Delete
