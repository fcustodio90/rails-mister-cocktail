require 'rest-client'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = RestClient.get(url)
api_hash = JSON.parse(response)

api_hash_into_array = api_hash['drinks']

api_hash_into_array.each do |seed|
  Ingredient.create(name: seed['strIngredient1'])
end
