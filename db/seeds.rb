require 'rest-client'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
api_hash = JSON.parse(response)

api_hash_into_array = api_hash['drinks']

api_hash_into_array.each do |seed|
  Ingredient.create(name: seed['strIngredient1'])
end


# Cocktail.create(name: "Mojito",)
# Cocktail.create(name: "Caipirinha")
# Cocktail.create(name: "Cosmopolitan")
# Cocktail.create(name: "Whisky on the rocks")


# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
