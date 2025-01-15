require 'json'
require 'open-uri'

breakfast_url = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=breakfast'
breakfast_serialized = URI.parse(breakfast_url).read
breakfast_recipes = JSON.parse(breakfast_serialized)['meals']


def recipe_builder(id)
  recipe_url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  recipe_serialized = URI.parse(recipe_url).read
  recipe_raw = JSON.parse(recipe_serialized)['meals'][0]
  new_recipe = Recipe.new({ name: recipe_raw["strMeal"] , description: recipe_raw["strInstructions"], image_url: recipe_raw["strMealThumb"], rating: rand(1 .. 10) })
  p new_recipe
end


breakfast_recipes.each do |recipe|
  id = recipe['idMeal']
  recipe_builder(id)
end



# figure out in irb - can we do recipe.category = __


# do we first seed the database with categories?


# create categories
# create recipes

# attach the two in the right place
