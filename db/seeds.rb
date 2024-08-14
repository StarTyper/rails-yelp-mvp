# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting any existing restaurants..."
Restaurant.destroy_all

Restaurant.create!(name: "Charlotte 1",
  address: "Charlottenstraße 1, 10969 Berlin",
  phone_number: "017632104133",
  category: "italian")
Restaurant.create!(name: "Chupenga",
  address: "Markgrafenstraße 58, 10117 Berlin",
  phone_number: "03025798536",
  category: "chinese")
Restaurant.create!(name: "Prosushi",
  address: "Hauptstraße 3, 10827 Berlin",
  phone_number: "017631387025",
  category: "japanese")
Restaurant.create!(name: "La Pizzetta",
  address: "Kolonnenstraße 18, 10829 Berlin",
  phone_number: "03081821549",
  category: "italian")
Restaurant.create!(name: "BRLO Chicken & Beer",
  address: "Tauentzienstraße 21-24, 10789 Berlin",
  phone_number: "03055577606",
  category: "belgian")

puts "Created #{Restaurant.count} restaurants"
