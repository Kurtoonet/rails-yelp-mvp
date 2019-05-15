require 'faker'

puts "we are detroying all the restaurants"
Restaurant.destroy_all
puts "all restaurant are destroyed"

category = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  puts " creating restaurants"
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: category.sample
    )
  restaurant.save!
  puts "restaurants created"
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
