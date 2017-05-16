# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  house = Item.create(description: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state} #{Faker::Address.zip}",
                      year_built: rand(100)+1890,
                      square_feet: rand(1500)+1000,
                      bedrooms: rand(3)+1,
                      bathrooms: rand(2)+1,
                      floors: rand(2)+1,
                      availability: Faker::Date.forward(365),
                      price: rand(100000)+75000
                      )
end