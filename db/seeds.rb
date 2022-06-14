# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Garden.destroy_all
User.destroy_all
Favorite.destroy_all
GardenProduct.destroy_all
GardenProductCharacteristic.destroy_all
Product.destroy_all
Characteristic.destroy_all

user1= User.create!(last_name: "lolo", first_name: "david", address: "32 av  ggggg", email: "jjj@live.fr", password: "azerty")
p "user create"
garden1= Garden.create!(name: "Fleur", address: "maier 5, nice", user_id: user1.id)
p "garden create"
review1= Review.create!(rating: "2", comment: "bon", user_id: user1.id, garden_id: garden1.id)
p "review create"
favorite1= Favorite.create!(garden_id: garden1.id, user_id: user1.id)
characteristic1= characteristic.create!(name: "bio")
product1= Product.create!(name: "tomate", category: "vegetable")
gardenProductCharacteristic1= GardenProductCharacteristic.create!(gardeProduct_id: gardenProduct1.id, characteristic_id: characteristic1.id )
gardenProduct1= GardenProduct.create!(product_id: product1.id, garden_id: garden1.id, quantity: "350")
