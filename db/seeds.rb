# puts 'cleaning database'
# Recipe.destroy_all

# Recipe.create(
#   name: 'Tofu peanut vegan stir-fry',
#   description: 'If you like lots of sauce in this vegan tofu stir-fry, you can double the ingredients and pour in as much as you prefer. It makes a delicious dressing or marinade for tofu if you have any left over.',
#   image_url: 'https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/tofu_peanut_stir-fry_62729_16x9.jpg',
#   rating: 8.1
# )
# Recipe.create(
#   name: 'Vegan Thai green curry',
#   description: 'This vegan Thai green curry is quick and easy to make, and packed with flavour and fragrance to give you a real taste of Thailand.',
#   image_url: 'https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/vegan_thai_green_curry_69640_16x9.jpg',
#   rating: 7.0
# )
# Recipe.create(
#   name: 'Vegan pulled jackfruit',
#   description: 'When you taste how good this pulled jackfruit is in a sandwich or taco filling, combined with your favourite slaws and salads for extra crunch, you\'ll want to eat it every day.',
#   image_url: 'https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/vegan_pulled_jackfruit_17371_16x9.jpg',
#   rating: 2.1
# )
# Recipe.create(
#   name: 'Miso aubergine with noodles',
#   description: 'Tender, sweet and salty miso aubergines sit on top a simple bowl of noodles and steamed veg for a perfect vegetarian Japanese-inspired dinner. This eats really well the next day in a lunchbox!',
#   image_url: 'https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/miso_aubergine_with_01293_16x9.jpg',
#   rating: 3.4
# )
# Recipe.create(
#   name: 'Avocado pasta with peas and mint',
#   description: 'This easy vegan pasta recipe uses a sauce that doesn\'t need cooking, just blitzing! The creamy avocado works so well with the fresh mint and peas. It\'s green and it\'s good!',
#   image_url: 'https://ichef.bbci.co.uk/food/ic/food_16x9_832/recipes/avocado_pasta_with_peas_31700_16x9.jpg',
#   rating: 10
# )

# puts "created #{Recipe.count} new recipes"

require 'json'
require 'open-uri'

# tested in rails console

breakfast_url = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=breakfast'
breakfast_serialized = URI.parse(breakfast_url).read
breakfast_recipes = JSON.parse(breakfast_serialized)['results']

p breakfast_recipes
# top_films.each do |film|
#   Movie.create(
#     title: film['title'],
#     overview: film['overview'],
#     poster_url: "http://image.tmdb.org/t/p/original#{film['poster_path']}",
#     rating: film['vote_average']
#   )
# end
