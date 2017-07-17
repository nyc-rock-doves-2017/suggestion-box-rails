# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Suggestion.destroy_all
10.times do 
  Suggestion.create(title: Faker::GameOfThrones.house, body: Faker::Hipster.paragraph, author: Faker::GameOfThrones.character)
end