# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning database.."
Restaurant.destroy_all

puts "creating restaurants..."
dishoom = {name: "Dishoom", address: "7, boundary St, London", phone_numer: "017632938627", category: "chinese"}
pizza_west = {name: "pizza_west", address: "Dorotheenstr 7, Hamburg", phone_numer: "017632938627", category: "italian"}
authentikka = {name: "authentikka", address: "Winterhude, Hamburg", phone_numer: "017632938627", category: "japanese"}
dominos = {name: "dominos", address: "ruppiner str. 44, 10112 Hamburg", phone_numer: "017632938627", category: "french"}
batu = {name: "batu", address: "Sternenschanze 3, 10112 Hamburg", phone_numer: "017632938627", category: "belgian"}

[dishoom, pizza_west, authentikka, dominos, batu].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Create #{restaurant.name}"
end

puts "Finished!"
