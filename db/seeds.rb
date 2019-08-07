# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database ...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category: Restaurant::CATEGORIES.sample
  },
  {
    name:         'Macdonals',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category: Restaurant::CATEGORIES.sample
  },
  {
    name:         'KFC',
    address:      'KFC address',
    category: Restaurant::CATEGORIES.sample
  },
  {
    name:         'Pizza hut',
    address:      'PIzzah hut address',
    category: Restaurant::CATEGORIES.sample
  },
  {
    name:         'Dominos',
    address:      'Dominos address',
    category: Restaurant::CATEGORIES.sample
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
