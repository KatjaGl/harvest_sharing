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


user1 = User.create!(nickname: "Jérome", last_name: "Delaplace", first_name: "Jérôme", address: "23 bd dubouchage, 06000 Nice", email: "jjj@live.fr", password: "azerty")
user1.presentation = "Je m'appelle Jérôme, j'adore jardiner (mais pas que le dimanche !). J'ai des courgettes de Nice en abondance, non traitées et deux abricotiers de variété Bergeron, à bientôt!"
user1.avatar.attach(io: File.open('app/assets/images/seed/jerome.jpg'), filename: "jerome.jpg", content_type: "image/jpg")
user1.save
p "user create"
user2 = User.create!(nickname: "Amélie", last_name: "Delavigne", first_name: "Amélie", address: "2 avenue Malaussena, 06000 Nice", email: "mariac@gmail.com", password: "azerty")
user2.presentation = "Je m'appelle Amelie, depuis toute jeune passionée par la nature et le jardinage, je vous propose de recupérer le surplus de ma production de mes cerisiers, je serai ravie de vous accueillir et partager avec vous un moment convivial."
user2.avatar.attach(io: File.open('app/assets/images/seed/amelie.jpg'), filename: "amelie.jpg", content_type: "image/jpg")
user2.save
user3 = User.create!(nickname: "Manue", last_name: "Mapelli", first_name: "Manue", address: "15 rue saint-philippe, 06000 Nice", email: "3jj@live.fr", password: "azerty")
p "user create"
user4 = User.create!(nickname: "Jas", last_name: "Derrag", first_name: "Jasmine", address: "10 rue Massenet, 06000 Nice", email: "jas@gmail.com", password: "azerty")
user5 = User.create!(nickname: "Kat", last_name: "Demas", first_name: "Katia", address: "4 place Pellegrini, 06300 Nice", email: "jkj@live.fr", password: "azerty")
p "user create"
user6 = User.create!(nickname: "Soso", last_name: "Monville", first_name: "Anne-Sophie", address: "13 rue de liège, 75009 Paris", email: "soso@gmail.com", password: "azerty")
user7 = User.create!(nickname: "Lauradu06", last_name: "Dupont", first_name: "Laura", address: "50 Rue Condorcet, 75009 Paris", email: "jjmj@live.fr", password: "azerty")
p "user create"
user8 = User.create!(nickname: "chouchou", last_name: "Hoffert", first_name: "Arsène", address: "11 Rue Vauquelin, 75005 Paris", email: "dodo@gmail.com", password: "azerty")
user9 = User.create!(nickname: "Hub", last_name: "Lafont", first_name: "Hubert", address: "31 Rue d'Ulm, 75005 Paris", email: "do@gmail.com", password: "azerty")
user10 = User.create!(nickname: "Marco", last_name: "Maronnier", first_name: "Marc", address: "4 Rue Vavin, 75006 Paris", email: "zodo@gmail.com", password: "azerty")
user11 = User.create!(nickname: "Loulou", last_name: "Maier", first_name: "Charlotte", address: "6 avenue du Ray, 06000 Nice", email: "zoddo@gmail.com", password: "azerty")
user12 = User.create!(nickname: "JL", last_name: "Paraud", first_name: "Jean-Loup", address: "13 avenue Scudéri, 06000 Nice", email: "zo0do@gmail.com", password: "azerty")

garden1 = Garden.create!(name: " Le Jardin Niçois", address: "23 bd dubouchage, 06000 Nice", user_id: user1.id)
garden1.photo.attach(io: File.open('app/assets/images/seed/jardin3.jpg'), filename: "jardin3.jpg", content_type: "image/jpg")
p "garden create"
garden2 = Garden.create!(name: "Le Jardin d'Amélie", address: "2 avenue Malaussena, 06000 Nice", user_id: user2.id)
garden2.photo.attach(io: File.open('app/assets/images/seed/amelie.jpg'), filename: "amelie.jpg", content_type: "image/jpg")
p "garden create"
garden3 = Garden.create!(name: "Le Jardin Des Lilas", address: "15 rue saint-philippe, 06000 Nice", user_id: user3.id)
garden3.photo.attach(io: File.open('app/assets/images/seed/jardin1.jpg'), filename: "jardin1.jpg", content_type: "image/jpg")
p "garden create"
garden4 = Garden.create!(name: "Le Jardin Fleur de Jade", address: "10 rue Massenet, 06000 Nice", user_id: user4.id)
garden4.photo.attach(io: File.open('app/assets/images/seed/jardin4.jpg'), filename: "jardin4.jpg", content_type: "image/jpg")
p "garden create"
garden5 = Garden.create!(name: "Le Jardin aux Papillons", address: "4 place Pellegrini, 06300 Nice", user_id: user5.id)
garden5.photo.attach(io: File.open('app/assets/images/seed/jardin5.jpg'), filename: "jardin5.jpg", content_type: "image/jpg")
p "garden create"
garden6 = Garden.create!(name: "Le Jardin des Poètes", address: "13 rue de liège, 75009 Paris", user_id: user6.id)
garden6.photo.attach(io: File.open('app/assets/images/seed/jardin6.jpg'), filename: "jardin6.jpg", content_type: "image/jpg")
p "garden create"
garden7 = Garden.create!(name: "Le Jardin des copains", address: "50 Rue Condorcet, 75009 Paris", user_id: user7.id)
garden7.photo.attach(io: File.open('app/assets/images/seed/jardin7.jpg'), filename: "jardin7.jpg", content_type: "image/jpg")
p "garden create"
garden8 = Garden.create!(name: "Le Jardin Les Orangers", address: "11 Rue Vauquelin, 75005 Paris", user_id: user8.id)
garden8.photo.attach(io: File.open('app/assets/images/seed/jardin8.jpg'), filename: "jardin8.jpg", content_type: "image/jpg")
p "garden create"
garden9 = Garden.create!(name: "Le Jardin de Robert", address: "31 Rue d'Ulm, 75005 Paris", user_id: user9.id)
garden9.photo.attach(io: File.open('app/assets/images/seed/jardin9.jpg'), filename: "jardin9.jpg", content_type: "image/jpg")
p "garden create"
garden10 = Garden.create!(name: "Mon Potager", address: "4 Rue Vavin, 75006 Paris", user_id: user10.id)
garden10.photo.attach(io: File.open('app/assets/images/seed/jardin10.jpg'), filename: "jardin10.jpg", content_type: "image/jpg")
p "garden fini"
garden11 = Garden.create!(name: "Le Potager de Louise", address: "6 avenue du Ray, 06000 Nice", user_id: user11.id)
garden11.photo.attach(io: File.open('app/assets/images/seed/jardin11.jpg'), filename: "jardin11.jpg", content_type: "image/jpg")
p "garden create"
garden12 = Garden.create!(name: "Le Potager du Sud", address: "13 avenue Scudéri, 06000 Nice", user_id: user12.id)
garden12.photo.attach(io: File.open('app/assets/images/seed/jardin12.jpg'), filename: "jardin12.jpg", content_type: "image/jpg")
p "garden fini"

product1 = Product.create!(name: "tomate", category: "vegetable")
product1.photos.attach(io: File.open('app/assets/images/seed/tomate jardin.jpg'), filename: "tomate jardin.jpg", content_type: "image/jpg")
product1.photos.attach(io: File.open('app/assets/images/seed/tomates.jpg'), filename: "tomates.jpg", content_type: "image/jpg")
product2 = Product.create!(name: "citron", category: "fruit")
product2.photos.attach(io: File.open('app/assets/images/seed/citrons.jpg'), filename: "citrons.jpg", content_type: "image/jpg")
product2.photos.attach(io: File.open('app/assets/images/seed/citronnier.jpg'), filename: "citronnier.jpg", content_type: "image/jpg")
product3 = Product.create!(name: "courgette", category: "vegetable")
product3.photos.attach(io: File.open('app/assets/images/seed/courgette plant.jpg'), filename: "courgette plant.jpg", content_type: "image/jpg")
product3.photos.attach(io: File.open('app/assets/images/seed/courgette fleur.jpg'), filename: "courgette fleur.jpg", content_type: "image/jpg")
product4 = Product.create!(name: "orange", category: "fruit")
product4.photos.attach(io: File.open('app/assets/images/seed/oranger.jpg'), filename: "oranger.jpg", content_type: "image/jpg")
product4.photos.attach(io: File.open('app/assets/images/seed/oranges.jpg'), filename: "oranges.jpg", content_type: "image/jpg")
product5 = Product.create!(name: "blette", category: "vegetable")
product5.photos.attach(io: File.open('app/assets/images/seed/blette plant.jpg'), filename: "blette plant.jpg", content_type: "image/jpg")
product5.photos.attach(io: File.open('app/assets/images/seed/blette.jpg'), filename: "blette.jpg", content_type: "image/jpg")
product6 = Product.create!(name: "kiwi", category: "fruit")
product6.photos.attach(io: File.open('app/assets/images/seed/kiwi plant.jpg'), filename: "kiwi plant.jpg", content_type: "image/jpg")
product6.photos.attach(io: File.open('app/assets/images/seed/kiwis.jpg'), filename: "kiwis.jpg", content_type: "image/jpg")
product7 = Product.create!(name: "basilic", category: "vegetable")
product7.photos.attach(io: File.open('app/assets/images/seed/basilic plant.jpg'), filename: "basilic plant.jpg", content_type: "image/jpg")
product7.photos.attach(io: File.open('app/assets/images/seed/basilic.jpg'), filename: "basilic.jpg", content_type: "image/jpg")
product8 = Product.create!(name: "fraise", category: "fruit")
product8.photos.attach(io: File.open('app/assets/images/seed/fraise main.jpg'), filename: "fraise main.jpg", content_type: "image/jpg")
product8.photos.attach(io: File.open('app/assets/images/seed/fraises.jpg'), filename: "fraises.jpg", content_type: "image/jpg")
product9 = Product.create!(name: "confiture", category: "autre")
product9.photos.attach(io: File.open('app/assets/images/seed/confiture marmite.jpg'), filename: "confiture marmite.jpg", content_type: "image/jpg")
product9.photos.attach(io: File.open('app/assets/images/seed/confiture.jpg'), filename: "confiture.jpg", content_type: "image/jpg")
product10 = Product.create!(name: "huile d'olive", category: "autre")
product10.photos.attach(io: File.open('app/assets/images/seed/olive.jpg'), filename: "olive.jpg", content_type: "image/jpg")
product10.photos.attach(io: File.open('app/assets/images/seed/olivier.jpg'), filename: "olivier.jpg", content_type: "image/jpg")
product11 = Product.create!(name: "oignon", category: "vegetable")
product11.photos.attach(io: File.open('app/assets/images/seed/oignon plant.jpg'), filename: "oignon plant.jpg", content_type: "image/jpg")
product11.photos.attach(io: File.open('app/assets/images/seed/oignon.jpg'), filename: "oignon.jpg", content_type: "image/jpg")
product12 = Product.create!(name: "melon", category: "fruit")
product12.photos.attach(io: File.open('app/assets/images/seed/melon.jpg'), filename: "melon.jpg", content_type: "image/jpg")
product12.photos.attach(io: File.open('app/assets/images/seed/melon main.jpg'), filename: "melon main.jpg", content_type: "image/jpg")
product13 = Product.create!(name: "pomme de terre", category: "vegetable")
product13.photos.attach(io: File.open('app/assets/images/seed/pomme de terre plant.jpg'), filename: "pomme de terre plant.jpg", content_type: "image/jpg")
product13.photos.attach(io: File.open('app/assets/images/seed/pomme de terre.jpg'), filename: "pomme de terre.jpg", content_type: "image/jpg")
product14 = Product.create!(name: "pêche", category: "fruit")
product14.photos.attach(io: File.open('app/assets/images/seed/pecher.jpg'), filename: "pecher.jpg", content_type: "image/jpg")
product14.photos.attach(io: File.open('app/assets/images/seed/peches.jpg'), filename: "peches.jpg", content_type: "image/jpg")
product15 = Product.create!(name: "betterave", category: "vegetable")
product15.photos.attach(io: File.open('app/assets/images/seed/betterave jardin.jpg'), filename: "betterave jardin.jpg", content_type: "image/jpg")
product15.photos.attach(io: File.open('app/assets/images/seed/betterave plant.jpg'), filename: "betterave plant.jpg", content_type: "image/jpg")
product16 = Product.create!(name: "cerise", category: "fruit")
product16.photos.attach(io: File.open('app/assets/images/seed/cerisier.jpg'), filename: "cerisier.jpg", content_type: "image/jpg")
product16.photos.attach(io: File.open('app/assets/images/seed/cerise.jpg'), filename: "cerise.jpg", content_type: "image/jpg")
product17 = Product.create!(name: "salade", category: "vegetable")
product17.photos.attach(io: File.open('app/assets/images/seed/salade.jpg'), filename: "salade.jpg", content_type: "image/jpg")
product17.photos.attach(io: File.open('app/assets/images/seed/salade2.jpg'), filename: "salade2.jpg", content_type: "image/jpg")
product18 = Product.create!(name: "framboise", category: "fruit")
product18.photos.attach(io: File.open('app/assets/images/seed/framboisier.jpg'), filename: "framboisier.jpg", content_type: "image/jpg")
product18.photos.attach(io: File.open('app/assets/images/seed/framboise.jpg'), filename: "framboise.jpg", content_type: "image/jpg")
product19 = Product.create!(name: "miel", category: "autre")
product19.photos.attach(io: File.open('app/assets/images/seed/miel apiculteur.jpg'), filename: "miel apiculteur.jpg", content_type: "image/jpg")
product19.photos.attach(io: File.open('app/assets/images/seed/miel ruche.jpg'), filename: "miel ruche.jpg", content_type: "image/jpg")
product20 = Product.create!(name: "abricot", category: "fruit")
product20.photos.attach(io: File.open('app/assets/images/seed/abricot.jpg'), filename: "abricot.jpg", content_type: "image/jpg")
product20.photos.attach(io: File.open('app/assets/images/seed/abricotier.jpg'), filename: "abricotier.jpg", content_type: "image/jpg")

gardenProduct1 = GardenProduct.create!(product_id: product20.id, garden_id: garden1.id, quantity: "30", detail_product: "j'ai deux abricotiers de variété Bergeron, très juteux et sucrés et des courgettes jaunes et vertes")
gardenProduct1 = GardenProduct.create!(product_id: product3.id, garden_id: garden1.id, quantity: "40")
gardenProduct2 = GardenProduct.create!(product_id: product3.id, garden_id: garden2.id, quantity: "50", detail_product: "nous avons planté différentes variétés de tomates: coeur de boeuf, ananas, green zebra...Il y en a pour tous les goûts!")
gardenProduct2 = GardenProduct.create!(product_id: product20.id, garden_id: garden2.id, quantity: "100", detail_product: "j'ai plein de cerises bigarot sur mes deux cerisiers, venez les chercher!")
gardenProduct3 = GardenProduct.create!(product_id: product3.id, garden_id: garden3.id, quantity: "50")
gardenProduct3 = GardenProduct.create!(product_id: product4.id, garden_id: garden3.id, quantity: "30")
gardenProduct4 = GardenProduct.create!(product_id: product16.id, garden_id: garden4.id, quantity: "10")
gardenProduct4 = GardenProduct.create!(product_id: product3.id, garden_id: garden4.id, quantity: "50")
gardenProduct5 = GardenProduct.create!(product_id: product17.id, garden_id: garden5.id, quantity: "50")
gardenProduct5 = GardenProduct.create!(product_id: product6.id, garden_id: garden5.id, quantity: "50")
gardenProduct6 = GardenProduct.create!(product_id: product18.id, garden_id: garden6.id, quantity: "30")
gardenProduct6 = GardenProduct.create!(product_id: product3.id, garden_id: garden6.id, quantity: "10")
gardenProduct7 = GardenProduct.create!(product_id: product19.id, garden_id: garden7.id, quantity: "50")
gardenProduct7 = GardenProduct.create!(product_id: product8.id, garden_id: garden7.id, quantity: "52")
gardenProduct8 = GardenProduct.create!(product_id: product20.id, garden_id: garden8.id, quantity: "5")
gardenProduct8 = GardenProduct.create!(product_id: product3.id, garden_id: garden8.id, quantity: "30")
gardenProduct9 = GardenProduct.create!(product_id: product15.id, garden_id: garden9.id, quantity: "10")
gardenProduct9 = GardenProduct.create!(product_id: product2.id, garden_id: garden9.id, quantity: "35")
gardenProduct10 = GardenProduct.create!(product_id: product12.id, garden_id: garden10.id, quantity: "40")
gardenProduct10 = GardenProduct.create!(product_id: product20.id, garden_id: garden10.id, quantity: "55")
gardenProduct11 = GardenProduct.create!(product_id: product15.id, garden_id: garden11.id, quantity: "20")
gardenProduct11 = GardenProduct.create!(product_id: product16.id, garden_id: garden11.id, quantity: "35")
gardenProduct12 = GardenProduct.create!(product_id: product17.id, garden_id: garden12.id, quantity: "10")
gardenProduct12 = GardenProduct.create!(product_id: product18.id, garden_id: garden12.id, quantity: "25")


# gardenProductCharacteristic1 = GardenProductCharacteristic.create!(garden_product_id: gardenProduct1.id, characteristic_id: characteristic1.id )

# review1 = Review.create!(rating: "2", comment: "bon", user_id: user1.id, garden_id: garden1.id)
# p "review create"
# favorite1 = Favorite.create!(garden_id: garden1.id, user_id: user1.id)
# # characteristic1 = Characteristic.create!(name: "bio")
