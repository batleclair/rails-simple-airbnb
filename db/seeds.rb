# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  name = Faker::Address.community
  description = Faker::Quote.matz
  address = Faker::Address.full_address
  price_per_night = rand(80..250)
  number_of_guests = rand(1..10)
  flat = Flat.new(name: name, description: description, address:address, price_per_night: price_per_night, number_of_guests: number_of_guests)
  flat.save
end
