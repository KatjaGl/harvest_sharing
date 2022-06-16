# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Favorite.destroy_all
p "favdestroy"
Review.destroy_all
p "review destroy"
GardenProductCharacteristic.destroy_all
p "gpc destroy"
GardenProduct.destroy_all
p "gp destroy"
Garden.destroy_all
p "gar destroy"
Product.destroy_all
p "pro destroy"
Characteristic.destroy_all
p "cha destroy"
Message.destroy_all
p "mess destroy"
Chatroom.destroy_all
p "Chat destroy"
User.destroy_all
p "user destroy"

user1 = User.create!(nickname: "Maus", last_name: "lolo", first_name: "david", address: "32 av ggggg", email: "jjj@live.fr", password: "azerty")
p "user create"
user2 = User.create!(nickname: "Maus2", last_name: "Cama", first_name: "Maria", address: "22 rue de la fête 75001 Paris", email: "mariac@gmail.com", password: "maria1")
user3 = User.create!(nickname: "Superman", last_name: "Labella", first_name: "Manue", address: "33 av  ggggg", email: "3jj@live.fr", password: "azerty0")
p "user create"
user4 = User.create!(nickname: "Sun", last_name: "Laparisienne", first_name: "Jasmine", address: "23 rue de la fête 75001 Paris", email: "jas@gmail.com", password: "jas123")
user5 = User.create!(nickname: "Lune", last_name: "lacodeuse", first_name: "Katia", address: "25 av  ggggg", email: "jkj@live.fr", password: "azerty3")

p "user create"
user6 = User.create!(nickname: "Lila", last_name: "lanormande", first_name: "soso", address: "3 rue de liège 75001 Paris", email: "soso@gmail.com", password: "soria1")
user7 = User.create!(nickname: "Bleu", last_name: "maline", first_name: "laura", address: "32 av montaigne 75001 Paris", email: "jjmj@live.fr", password: "azert56")
p "user create"
user8 = User.create!(nickname: "Black", last_name: "super", first_name: "dorothée", address: "22 rue de la fête 76001 Rouen", email: "dodo@gmail.com", password: "mari5a1")

garden1 = Garden.create!(name: "Fleur", address: "maier 5, nice", user_id: user1.id)
p "garden create"
garden2 = Garden.create!(name: "Le jardin des amoureux", address: "Rue des biens-heureux, 06000 Nice", user_id: user2.id)
p "garden create"
garden3 = Garden.create!(name: "Les Lilas", address: "3 avenue malaussena 06000 Nice", user_id: user3.id)
p "garden create"
garden4 = Garden.create!(name: "Les orangers", address: "Rue des bisous, 06000 Nice", user_id: user8.id)
p "garden create"
garden5 = Garden.create!(name: "Fleur de Jade", address: "25 rue de la joie 06000 Nice", user_id: user4.id)
p "garden create"
garden6 = Garden.create!(name: "Le jardin de Marie", address: "3 rue Berlioz, 06000 Nice", user_id: user5.id)
p "garden create"
garden7 = Garden.create!(name: "Chez Gustave", address: "5 rue d'Arsène, 06000 nice", user_id: user6.id)
p "garden create"
garden8 = Garden.create!(name: "Les fraisiers", address: "3 boulevard dubouchage, 06000 Nice", user_id: user7.id)
p "garden create"

review1 = Review.create!(rating: "2", comment: "bon", user_id: user1.id, garden_id: garden1.id)
p "review create"
favorite1 = Favorite.create!(garden_id: garden1.id, user_id: user1.id)
characteristic1 = Characteristic.create!(name: "bio")

product1 = Product.create!(name: "tomate", category: "vegetable")
product2 = Product.create!(name: "citron", category: "fruit")
product3 = Product.create!(name: "courgette", category: "vegetable")
product4 = Product.create!(name: "orange", category: "fruit")
product5 = Product.create!(name: "blette", category: "vegetable")
product6 = Product.create!(name: "kiwi", category: "fruit")
product7 = Product.create!(name: "basilic", category: "vegetable")
product8 = Product.create!(name: "fraise", category: "fruit")
product9 = Product.create!(name: "confiture", category: "autre")
product10 = Product.create!(name: "huile d'olive", category: "autre")


gardenProduct1 = GardenProduct.create!(product_id: product1.id, garden_id: garden1.id, quantity: "350")
gardenProduct2 = GardenProduct.create!(product_id: product2.id, garden_id: garden2.id, quantity: "50")

gardenProductCharacteristic1 = GardenProductCharacteristic.create!(garden_product_id: gardenProduct1.id, characteristic_id: characteristic1.id )
