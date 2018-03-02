# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum vodka sodawater vermouth campari sake beer cola sprite whiskey champagne )
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }


