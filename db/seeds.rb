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

user1 = User.create!(nickname: "test", last_name: "sharing", first_name: "harvest", address: "23 bd dubouchage 06000 Nice", email: "jjj@live.fr", password: "azerty")
p "user create"
user2 = User.create!(nickname: "Mariadu06", last_name: "Cama", first_name: "Maria", address: "2 avenue Malaussena 06000 Nice", email: "mariac@gmail.com", password: "azerty")
user3 = User.create!(nickname: "Manue", last_name: "Mapelli", first_name: "Manue", address: "15 rue saint-philippe 06000 Nice", email: "3jj@live.fr", password: "azerty")
p "user create"
user4 = User.create!(nickname: "Jas", last_name: "Derrag", first_name: "Jasmine", address: "10 rue Massenet 06000 Nice", email: "jas@gmail.com", password: "azerty")
user5 = User.create!(nickname: "Kat", last_name: "Demas", first_name: "Katia", address: "4 place Pellegrini 06300 Nice", email: "jkj@live.fr", password: "azerty")
p "user create"
user6 = User.create!(nickname: "Soso", last_name: "Monville", first_name: "Anne-Sophie", address: "13 rue de liège 75009 Paris", email: "soso@gmail.com", password: "azerty")
user7 = User.create!(nickname: "Lauradu06", last_name: "Dupont", first_name: "Laura", address: "50 Rue Condorcet, 75009 Paris", email: "jjmj@live.fr", password: "azerty")
p "user create"
user8 = User.create!(nickname: "chouchou", last_name: "Hoffert", first_name: "Arsène", address: "11 Rue Vauquelin, 75005 Paris", email: "dodo@gmail.com", password: "azerty")
user9 = User.create!(nickname: "Hub", last_name: "Lafont", first_name: "Hubert", address: "31 Rue d'Ulm, 75005 Paris", email: "do@gmail.com", password: "azerty")
user10 = User.create!(nickname: "Marco", last_name: "Maronnier", first_name: "Marc", address: "4 Rue Vavin, 75006 Paris", email: "zodo@gmail.com", password: "azerty")

garden1 = Garden.create!(name: " Le Jardins des Belles Fleurs", address: "23 bd dubouchage 06000 Nice", user_id: user1.id)
p "garden create"
garden2 = Garden.create!(name: "Le jardin des Amoureux", address: "2 avenue Malaussena 06000 Nice", user_id: user2.id)
p "garden create"
garden3 = Garden.create!(name: "Le jardin Des Lilas", address: "15 rue saint-philippe 06000 Nice", user_id: user3.id)
p "garden create"
garden4 = Garden.create!(name: "Le Jardin Fleur de Jade", address: "10 rue Massenet 06000 Nice", user_id: user4.id)
p "garden create"
garden5 = Garden.create!(name: "Le Jardin aux Papillons", address: "4 place Pellegrini 06300 Nice", user_id: user5.id)
p "garden create"
garden6 = Garden.create!(name: "Le Jardin des Poètes", address: "13 rue de liège 75009 Paris", user_id: user6.id)
p "garden create"
garden7 = Garden.create!(name: "Le Jardin des copains", address: "50 Rue Condorcet, 75009 Paris", user_id: user7.id)
p "garden create"
garden8 = Garden.create!(name: "Le Jardin Les Orangers", address: "11 Rue Vauquelin, 75005 Paris", user_id: user8.id)
p "garden create"
garden9 = Garden.create!(name: "Le Jardin des fées", address: "31 Rue d'Ulm, 75005 Paris", user_id: user9.id)
p "garden create"
garden10 = Garden.create!(name: "Le Jardin Anglais", address: "4 Rue Vavin, 75006 Paris", user_id: user10.id)
p "garden create"


product1 = Product.create!(name: "tomate", category: "vegetable")
product1.photo.attach(io: File.open('app/assets/images/seed/tomate-potager.png'), filename:"tomate-potager.png", content_type:"image/png")
product2 = Product.create!(name: "citron", category: "fruit")
product3 = Product.create!(name: "courgette", category: "vegetable")
product4 = Product.create!(name: "orange", category: "fruit")
product5 = Product.create!(name: "blette", category: "vegetable")
product6 = Product.create!(name: "kiwi", category: "fruit")
product7 = Product.create!(name: "basilic", category: "vegetable")
product8 = Product.create!(name: "fraise", category: "fruit")
product9 = Product.create!(name: "confiture", category: "autre")
product10 = Product.create!(name: "huile d'olive", category: "autre")
product11 = Product.create!(name: "oignon", category: "vegetable")
product12 = Product.create!(name: "melon", category: "fruit")
product13 = Product.create!(name: "pomme de terre", category: "vegetable")
product14 = Product.create!(name: "pêche", category: "fruit")
product15 = Product.create!(name: "betterave", category: "vegetable")
product16 = Product.create!(name: "cerise", category: "fruit")
product17 = Product.create!(name: "salade", category: "vegetable")
product18 = Product.create!(name: "framboise", category: "fruit")
product19 = Product.create!(name: "miel", category: "autre")
product20 = Product.create!(name: "olive", category: "autre")


gardenProduct1 = GardenProduct.create!(product_id: product1.id, garden_id: garden1.id, quantity: "30")
gardenProduct2 = GardenProduct.create!(product_id: product2.id, garden_id: garden2.id, quantity: "50")

gardenProductCharacteristic1 = GardenProductCharacteristic.create!(garden_product_id: gardenProduct1.id, characteristic_id: characteristic1.id )

review1 = Review.create!(rating: "2", comment: "bon", user_id: user1.id, garden_id: garden1.id)
p "review create"
favorite1 = Favorite.create!(garden_id: garden1.id, user_id: user1.id)
characteristic1 = Characteristic.create!(name: "bio")
