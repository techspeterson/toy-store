# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  pokemon_name = Faker::Games::Pokemon.name
  Toy.create(name: pokemon_name, description:"A #{pokemon_name} stuffed toy", date_posted:Faker::Date.in_date_period, user:Faker::Twitter.screen_name)
end