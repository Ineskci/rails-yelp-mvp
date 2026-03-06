# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Nettoyer la base 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Créer les instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2&JE", category: "french")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Pizza East"
Restaurant.create!(name: "Xuang", address: "69 Denver Broley, London A1 6PQ", category: "chinese")
puts "Xuang"
Restaurant.create!(name: "Sakory", address: "34 Denver Washington, London 4E 6PQ", category: "japanese")
puts "Sakory"
Restaurant.create!(name: "Belgian Pub", address: "43 Francis Martins, London 4E 9DT", category: "belgian")
puts "Belgian Pub"


# 3. Message de confirmation 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
